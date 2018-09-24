<!DOCTYPE html>
<html>
<head>
	<title>Gjalmiðlar</title>
	<style>
		body {
			max-width: 50em;
			margin: 0 auto;
		}
	</style>
</head>
<body>
	<%
	import json
	with open('gengi.json','r', encoding='utf-8') as skra:
		gengi = json.load(skra)
	end
	%>
	<h2>Gengi gjalamiðla:</h2> 
	%for i in gengi['results']:
	<h4>{{ i['longName'] }} {{ i['shortName'] }}, gegn ISKR: {{ i['value'] }}</h4>

	%end

</body>
</html>