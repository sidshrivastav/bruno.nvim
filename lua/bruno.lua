-- Define a function to get the environment path
local function get_root_path()
  local root_dir = vim.fn.getenv("BRUNO_ROOT_DIR")
  if root_dir == nil or root_dir == '' then
    return nil
  else
    return root_dir
  end
end

-- Function to change directory to the environment path and list its contents
local function go_to_root_dir()
    local root_dir = get_root_path()
    -- Check if root dir available or not
    if root_dir == nil then
      print("BRUNO_ROOT_DIR is missing in env")
    else
      -- Attempt to change directory to the environment path
      vim.fn.chdir(root_dir)
      print("Changed directory to:", root_dir)
      vim.fvn.system("ls")  -- List new directory contents
    end
end

-- Expose the function to be used by other Lua modules or scripts
return {
    get_root_path = get_root_path,
    go_to_root_dir = go_to_root_dir
}
