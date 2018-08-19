# Hungry Plants

Hungry plants is an application that connect and visualizes your humidity data!

## Local development

1. Go to https://github.com/mansdahlstrom1/hungry-plants and clone the API
2. cd in the folder of the API repo `cd path/to/api/folder`
3. run `npm run dev`
4. Change the `API_URL` to `localhost:3000` in `api.dart` if not set.   

## App strucutre

### Home

Home will show mutiple plant cards, thes cards will conatins information about:
- Namn - plant name
- humidity level
- Plant species

By pressing a card the user can go into a detail view of the plant

### Plant details
- Name
- Graph (humidity over time)
- Type of plant
- Plant advice - collected from somewhere


In the home screen there will also be a "add sensor button" this will lead to the add plant page

### Add plant / pair

Here the users will:
1. connect to the ESP asccess point
2. Give wifi credentails to the ESP
3. Then the user will give the device some additional details
- Plant name
- plant species
