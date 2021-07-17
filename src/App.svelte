<script lang="ts">
	import Name from './Name.svelte';
	import ScrollIcon from './ScrollIcon.svelte';
	import TimeLine from './TimeLine.svelte';
	import { fade } from 'svelte/transition';
	let name: string = "Nico Bleiler";
	let attributes: Array<string> = ["a developer.", "an engineer.", "Batman", "a tinkerer.", "a gamer.", "running out of ideas to put here.", "Ironman.", "looking for a Job"]
	let timeLineItems = [
		{
			image: "/images/bitfire-logo.png",
			timeRange: "09/2020",
			location: "bitfire GmbH - Softwaredeloper",
			description: ""
		},
		{
			image: "/images/divinci-logo.png",
			timeRange: "09/2017",
			location: "Divinci GmbH - Softwaredevelopment apprenticeship",
			description: ""
		},
		{
			image: "/images/divinci-logo.png",
			timeRange: "02/2017",
			location: "Divinci GmbH - Softwaredevelopment internship",
			description: ""
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
	<p transition:fade>Lorem ipsum dolor sit amet consectetur adipisicing elit. Explicabo, provident consectetur inventore, magni veritatis tempora nulla officiis recusandae beatae non laudantium, alias commodi veniam sit! Rerum nobis veritatis similique eveniet?</p>
</main>

<style>
	#position {
		position: sticky;
		top: 0%;
		left: 0%;
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