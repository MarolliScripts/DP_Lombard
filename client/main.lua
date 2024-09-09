ESX = exports["es_extended"]:getSharedObject()

-- BLIP
CreateThread(function()

    for k,v in pairs(Config.Blip) do
        local blip = AddBlipForCoord(v.Coords)

        SetBlipSprite (blip, v.Sprite)
        SetBlipDisplay(blip, v.Display)
        SetBlipScale  (blip, v.Scale)
        SetBlipColour (blip, v.Colour)
        SetBlipAsShortRange(blip, true)

        BeginTextCommandSetBlipName('STRING')
        AddTextComponentString("<font face='Poppins-Medium' size= '11'>".. v.Name .."</font>" )
        EndTextCommandSetBlipName(blip)
        exports['Blipy']:SetBlip(blip, v.info)
    end
end)

CreateThread(function()
  lib.registerContext({
      id = 'DP:LombardMenu',
      title = 'Lombard',
      options = {
          {
              title = 'Zakup',
              description = 'Zobacz, co możesz kupić.',
              menu = 'DP:LombardZakupMenu',
              icon = 'fa-solid fa-sign-in-alt'
          },
          {
              title = 'Sprzedaż',
              description = 'Masz coś na sprzedaż? Sprawdź ofertę!',
              menu = 'DP:LombardSprzedajMenu',
              icon = 'fa-solid fa-sign-out-alt'
          }
      }
  })

  lib.registerContext({
      id = 'DP:LombardZakupMenu',
      title = 'Oferta Zakupu',
      menu = 'DP:LombardMenu',
      options = {
          {
              title = 'Pistolet',
              description = 'Idealny do samoobrony.',
              menu = 'pistol_menu',
              icon = 'fa-solid fa-gun'
          },
          {
              title = 'Wytrych',
              description = 'Otwiera większość zamków.',
              menu = 'wytrych_menu',
              icon = 'fa-solid fa-key'
          },
          {
              title = 'Telefon',
              description = 'Solidny, działający model telefonu.',
              menu = 'phone_menu',
              icon = 'fa-solid fa-phone'
          }
      }
  })

  lib.registerContext({
      id = 'pistol_menu',
      title = 'Oferta - Pistolet',
      menu = 'DP:LombardZakupMenu',
      options = {
          { title = 'Model: Zwykły Pistolet' },
          { title = 'Naboje w magazynku: 8/12', progress = 60 },
          { title = 'Cena: 1000$' },
          {
              title = 'Zakup',
              description = 'Potwierdź zakup.',
              icon = 'fa-solid fa-dollar-sign',
              onSelect = function()
                  TriggerServerEvent('DPlombard:zakupbron')
              end
          }
      }
  })

  lib.registerContext({
      id = 'wytrych_menu',
      title = 'Oferta - Wytrych',
      menu = 'DP:LombardZakupMenu',
      options = {
          { title = 'Narzędzie: Wytrych' },
          { title = 'Stan: 92%', progress = 92 },
          { title = 'Cena: 800$' },
          {
              title = 'Zakup',
              description = 'Potwierdź zakup.',
              icon = 'fa-solid fa-dollar-sign',
              onSelect = function()
                  TriggerServerEvent('DPlombard:zakupwytrych')
              end
          }
      }
  })

  lib.registerContext({
      id = 'phone_menu',
      title = 'Oferta - Telefon',
      menu = 'DP:LombardZakupMenu',
      options = {
          { title = 'Model: iPhone' },
          { title = 'Stan baterii: 86%', progress = 86 },
          { title = 'Cena: 300$' },
          {
              title = 'Zakup',
              description = 'Potwierdź zakup.',
              icon = 'fa-solid fa-dollar-sign',
              onSelect = function()
                  TriggerServerEvent('DPlombard:zakupphone')
              end
          }
      }
  })

  lib.registerContext({
      id = 'DP:LombardSprzedajMenu',
      title = 'Oferta Sprzedaży',
      menu = 'DP:LombardMenu',
      options = {
          {
              title = 'Złoto',
              description = 'Sprzedaj swoje złoto po dobrej cenie.',
              menu = 'zloto_menu',
              icon = 'fa-solid fa-coins'
          },
          {
              title = 'Naszyjnik',
              description = 'Sprzedaj swoje biżuterię.',
              menu = 'chain_menu',
              icon = 'fa-solid fa-chain'
          },
          {
              title = 'Diament',
              description = 'Sprzedaj diamenty.',
              menu = 'diament_menu',
              icon = 'fa-solid fa-gem'
          }
      }
  })

  lib.registerContext({
      id = 'zloto_menu',
      title = 'Sprzedaż - Złoto',
      menu = 'DP:LombardSprzedajMenu',
      options = {
          { title = 'Minerał: Złoto' },
          { title = 'Odkup za: 50$/sztuka' },
          {
              title = 'Sprzedaj',
              description = 'Potwierdź sprzedaż.',
              icon = 'fa-solid fa-dollar-sign',
              onSelect = function()
                  TriggerServerEvent('DPlombard:sprzedajzloto')
              end
          }
      }
  })

  lib.registerContext({
      id = 'chain_menu',
      title = 'Sprzedaż - Naszyjnik',
      menu = 'DP:LombardSprzedajMenu',
      options = {
          { title = 'Biżuteria: Naszyjnik' },
          { title = 'Odkup za: 200$/sztuka' },
          {
              title = 'Sprzedaj',
              description = 'Potwierdź sprzedaż.',
              icon = 'fa-solid fa-dollar-sign',
              onSelect = function()
                  TriggerServerEvent('DPlombard:sprzedajchain')
              end
          }
      }
  })

  lib.registerContext({
      id = 'diament_menu',
      title = 'Sprzedaż - Diament',
      menu = 'DP:LombardSprzedajMenu',
      options = {
          { title = 'Minerał: Diament' },
          { title = 'Odkup za: 800$/sztuka' },
          {
              title = 'Sprzedaj',
              description = 'Potwierdź sprzedaż.',
              icon = 'fa-solid fa-dollar-sign',
              onSelect = function()
                  TriggerServerEvent('DPlombard:sprzedajdiament')
              end
          }
      }
  })
end)
