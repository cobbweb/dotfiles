function vscode
  set location "$PWD/$argv"
  open -n -b "com.microsoft.VSCode" --args $location
end
