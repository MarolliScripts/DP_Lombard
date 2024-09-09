exports.qtarget:AddBoxZone("glownemenu", vec3(173.7, -1317.78, 28.35), 0.5, 0.5, {
    name="glownemenu",
    heading=11.0,
    debugPoly=false,
    minZ=27.90,
    maxZ=29.90,
    }, {
        options = {
            {
                icon = "fa-solid fa-money-bill",
                label = 'Sprawdź ofertę',
                action = function() lib.showContext('DP:LombardMenu') end,
            },
        },
        distance = 3.5
})