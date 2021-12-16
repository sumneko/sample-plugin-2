function OnSetText(uri, text)
    local diffs = {}

    for pos in text:gmatch '()#' do
        if pos == 1 or text:sub(pos - 1, pos - 1):match '[\r\n]' then
            diffs[#diffs+1] = {
                start = pos,
                finish = pos,
                text = '//'
            }
        end
    end

    return diffs
end
