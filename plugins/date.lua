function run(msg, matches)
local url , res = http.request('http://api.gpmod.ir/time/')
if res ~= 200 then return "No connection" end
local jdat = json:decode(url)
local text = '🕒 ساعت '..jdat.FAtime..' \n📆 امروز '..jdat.FAdate..' میباشد.\n    ----\n🕒 '..jdat.ENtime..'\n📆 '..jdat.ENdate.. '\n@antispamandhack'
return text
end
return {
  patterns = {"^[#!/]([Tt]ime&date)$","^�1�2�1�9�1�9�1�4�1�6$",
}, 
run = run 
}
