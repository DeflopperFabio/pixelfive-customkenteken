Plates = {
	{ "plate01", "pixelfive-kenteken/images/streepjes.png", 540, 300 },
	{ "plate01_n", "pixelfive-kenteken/images/streepjes.png", 540, 300 },
	{ "plate02", "pixelfive-kenteken/images/streepjes.png", 540, 300 },
	{ "plate02_n", "pixelfive-kenteken/images/streepjes.png", 540, 300 },
	{ "plate03", "pixelfive-kenteken/images/streepjes.png", 540, 300 },
	{ "plate03_n", "pixelfive-kenteken/images/streepjes.png", 540, 300 },
	
	{ "plate04", "pixelfive-kenteken/images/leeg.png", 540, 300 },
	{ "plate04_n", "pixelfive-kenteken/images/leeg.png", 540, 300 },
	{ "plate05", "pixelfive-kenteken/images/leeg.png", 540, 300 },
	{ "plate05_n", "pixelfive-kenteken/images/leeg.png", 540, 300 },
	{ "yankton_plate", "pixelfive-kenteken/images/streepjes.png", 540, 300 },
	{ "yankton_plate_n", "pixelfive-kenteken/images/streepjes.png", 540, 300 },
}

local txd = CreateRuntimeTxd("licenseplatetxd")

Citizen.CreateThread(function()
	for _, plate in pairs(Plates) do
		CreateRuntimeTextureFromImage(txd, plate[1], plate[2])

		AddReplaceTexture("vehshare", plate[1], "licenseplatetxd", plate[1])
	end
end)
