# polybar-module-wikipedia
This module displays Wikipedia's featured article of the day on your Polybar. Este módulo muestra el artículo destacado del día de Wikipedia en tu barra Polybar.

## Dependency
1. pup
2. curl
3. nerd fonts

## Example
![wikipediash](https://raw.githubusercontent.com/IamJony/semi-nord-theme-bluefish/main/Screenshot_2024-02-03-10-20-37_1366x768.png)


## Module

```
[module/wikipedia]
type = custom/script
content-background = ${color.primary}
exec = ~/.config/polybar/wikipedia.sh | head -n 1
tail = true
interval = 60
format = %{T6}󰖬 <label>
format-background =${color.background}
format-foreground = ${color.green}
format-overline = ${color.background}
format-underline = ${color.background}
format-padding = 1
click-left = xdg-open $(~/.config/polybar/wikipedia.sh | sed -n '2p')
click-right = xdg-open https://es.wikipedia.org/wiki/Wikipedia:Portada

```
