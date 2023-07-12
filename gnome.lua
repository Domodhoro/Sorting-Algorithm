function gnome_sort(items, size)
    local i = 2
    local j = 3

    while i <= size do
        if items[i - 1] <= items[i] then
            i = j
            j = j + 1
        else
            items[i - 1], items[i] = items[i], items[i - 1]
            i = i - 1
            if i == 1 then
                i = j
                j = j + 1
            end
        end
    end
end

function main()
    local items = {
        2.54, 5.85, 4.18, 0.54, 4.36, 2.33,
        6.36, 3.32, 7.65, 4.56, 9.56, 1.24
    }

    gnome_sort(items, #items)

    for i = 1, #items do print(items[i]) end
end
