local function expect(index, value, ...)
    local t = type(value)
    for i = 1, select("#", ...) do
        if t == select(i, ...) then return value end
    end

    t = get_display_type(value, t)

    local type_names = get_type_names(...)
		local name = debug.info(2, "n")

    if name then
        error(("bad argument #%d to '%s' (%s expected, got %s)"):format(index, name, type_names, t), 3)
    else
        error(("bad argument #%d (%s expected, got %s)"):format(index, type_names, t), 3)
    end
end

return { expect = expect }