<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title></title>
	<link rel="stylesheet" type="text/css" href="/static/styles.css">
</head>
<body>
	%include('haus.tpl')

	<div class="row">
		<!--section><img src='/static/panda0.jpg'></secton-->
		<section>
			<h2>Gengi gjalmiðla frá apis.is/currency</h2>
			<ul>
				% for i in data['results']:
				<li>{{ i['longName'] }} - {{ i['shortName'] }}, gegn ISKR: {{ i['value'] }}</li>
				%end
			</ul>
		</section>
	</div>

	%include('fotur.tpl')
</body>
</html>