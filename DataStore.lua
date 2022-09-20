local DataStoreService = game:GetService("DataStoreService")

local experienceStore = DataStoreService:GetDataStore("PlayerExperience")

local success, err = pcall(function()
	experienceStore:SetAsync("", 50)
end)

if success then
	print('Success!')
else
	print("Error: ", err)
end



---Using that


local success, currentExperience = pcall(function()
	return experienceStore:GetAsync("Player_1234")
end)


if success then
	print("Current Experience: ", currentExperience)
else
	print("err", currentExperience)
end



---Changing that

local success, newExperience = pcall(function()
	return experienceStore:IncrementAsync("Player_1234", -1) 
end)

if success then 
	print("New Experience: ", newExperience)
end