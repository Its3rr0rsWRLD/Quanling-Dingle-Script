local function SaveInfo()
	userinfo["pfp"] = pfp
	userinfo["user"] = user
	userinfo["tag"] = tag
	writefile("discordlibinfo.txt", HttpService:JSONEncode(userinfo));
end
