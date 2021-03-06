--Assumption: Base Game Present (Not much of an assumption)
function addToFurnaceSmelting (ingredients, results, modName) 
-- For simplicity sake, the code assumes that there are no liquids in the results and that the main result is the first one in the list
	if ingredients["name"] then ingredients = {ingredients} end
	if results["name"] then results = {results} end
	for index, result in pairs(results) do
		if not result["type"] then result["type"] = "item" end
	end
	RecGen:create(modName,results[1]["name"].."-smelting"):
		setCategory("smelting"):
		marathon():
		setEnergy(5):
		setIngredients(ingredients):
		setIcons(results[1]["name"]):
		setEnabled():
		setResults(results):
		extend()
end
--Assumtion: Xander Overhaul Present (This mod. Not much of an assumption)
function addToKilnSmelting (ingredients, results, modName)
-- For simplicity sake, the code assumes that there are no liquids in the results and that the main result is the first one in the list
	if ingredients["name"] then ingredients = {ingredients} end
	if results["name"] then results = {results} end
	for index, result in pairs(results) do
		if not result["type"] then result["type"] = "item" end
	end
	RecGen:create(modName,results[1]["name"].."-kiln-smelting"):
		setCategory("kiln"):
		marathon():
		setEnergy(5):
		setIngredients(ingredients):
		setIcons(results[1]["name"]):
		setEnabled():
		setResults(results):
		extend()
end
--Assumption: Omnimatter Present
function addToBurnerExtractionFromOmnite (oreName, modName)
	RecGen:create(modName, oreName.."-burner-extraction"):
		setCategory("omnite-extraction-burner"):
		marathon():
		setEnergy(5):
		setIngredients({"omnite",5}):
		setIcons(oreName):
		setEnabled():
		setResults(
			{type="item", name="stone-crushed", amount=4},
			{type="item", name=oreName, amount=1}
		):extend()
end

function addToBurnerExtraction(ingredients, results, modName)
	if ingredients["name"] then ingredients = {ingredients} end
	if results["name"] then results = {results} end
	for index, result in pairs(results) do
		if not result["type"] then result["type"] = "item" end
	end
	RecGen:create(modName,"impure-"..results[1]["name"].."-burner-extraction"):
		setCategory("omnite-extraction-burner"):
		marathon():
		setEnergy(5):
		setIngredients(ingredients):
		setIcons(ingredients[1]["name"]):
		setEnabled():
		setResults(results):
		extend()
end