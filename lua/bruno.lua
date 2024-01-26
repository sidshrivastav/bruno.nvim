local function run_bru()
	local file = vim.fn.expand("%:p")
	print("my file is " .. file)
end

return {
	run_bru = run_bru
}
