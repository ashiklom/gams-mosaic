# Naming conventions

## General naming:
* t -- Time (year)
* r -- Region
* s -- Sector ???

## Common Parameters:
* tol_param(r, s, "description")
* temp(t) -- Global mean temperature at time t
* sea_level(t) -- Sea level

## Aggregate states:
* Region (r) -- "world"
* Sector (s) -- "all"

* E.g., a parameter that is region specific but encompasses all sectors: tol_param(r, "all", "elevation")
* Or, a parameter that is not region or sector specific: tol_param("world", "all", "income_elasticity")

## Other conventions:
* For recursive processes, use t, t-1, t-2... syntax (rather than ...t+2, t+1, t).
