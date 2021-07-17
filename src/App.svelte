<script lang="ts">
	import Name from './Name.svelte';
	import ScrollIcon from './ScrollIcon.svelte';
	import TimeLine from './TimeLine.svelte';
	import { fade } from 'svelte/transition';
	let name: string = "Nico Bleiler";
	let attributes: Array<string> = ["a developer.", "an engineer.", "Batman.", "a tinkerer.", "a gamer.", "running out of ideas to put here.", "Ironman.", "looking for a Job."]
	let timeLineItems = [
		{
			image: "/images/bitfire-logo.png",
			timeRange: "09/2020",
			location: "bitfire GmbH",
			title: "Softwaredeloper",
			description: "<ul><li>Automating scripts on 1500 clients</li><li>Ticketsystem synchronizations<ul><li>MS Teams calls</li><li>Monitoring tool</li><li>Remotesupport times</li></ul></li></ul>"
		},
		{
			image: "/images/divinci-logo.png",
			timeRange: "09/2017",
			location: "Divinci GmbH",
			title: "Softwaredevelopment apprenticeship",
			description: "<ul><li>Course booking plugin</li><li>Payment gateway implementations</li></ul>"
		},
		{
			image: "/images/divinci-logo.png",
			timeRange: "02/2017",
			location: "Divinci GmbH",
			title: "Softwaredevelopment internship",
			description: "<ul><li>Quiz game</li><li>DJ booking website</li><li>Ticketsystem(Department transfer)</li></ul>"
		}
	];
</script>

<main>
	<header class="header center">
		<div id="info">
			<Name name={name} attributes={attributes}></Name>
		</div>
		<div id="scroll">
			<ScrollIcon></ScrollIcon>
		</div>
	</header>
	<TimeLine timeLineItems={timeLineItems}></TimeLine>
	<div class="flex-box">
		<div class="flex-item"/>
		<div class="flex-item">
			<h2>📍 <a href="https://www.google.com/maps/place/97688+Bad+Kissingen" target="_BLANK">Bad Kissingen</a></h2>
		</div>
		<div class="flex-item">
			<h2>📱 Phone</h2>
		</div>
		<div class="flex-item">
			<h2>📧 <a href="mailto:info@bleiler.dev" target="_BLANK">info@bleiler.dev</a></h2>
		</div>
		<div class="flex-item">
			<h2>📂 <a href="https://github.com/nicobleiler/vcard" target="_BLANK">GitHub</a></h2>
		</div>
		<div class="flex-item"/>
	</div>
</main>

<style>
	.flex-box {
		width: 100%;
		display: flex;
		flex-direction: row;
		justify-content: center;
		align-items: stretch;
    	flex-wrap: wrap;
	}
	.flex-item {
		flex: 1;
		align-self: center;
		align-items: center;
		align-content: center;
    	text-align: center;
	}
	
    @media only screen and (max-width: 767px) {
	.flex-box {
		flex-direction: column;
	}
	}
	.header {
		width: 100%;
		height: 100vh;
		background-image: linear-gradient(rgba(0, 0, 0, .9), rgba(0, 0, 0, 0.7) ), url("/images/background-code.jpg");	
  		background-size: cover;
  		background-repeat: no-repeat;
	}
	.center {
		text-align: center;
        display: flex;
        flex-flow: column;
        justify-content: center;
	}
	#scroll {
		position: absolute;
		display: block;
		top: 90%;
		left: 50%;
	}
</style>