<script lang="ts">
	import Name from './Name.svelte';
	import ScrollIcon from './ScrollIcon.svelte';
	import TimeLine from './TimeLine.svelte';
	let name: string = "Nico Bleiler";
	let attributes: Array<string> = ["a developer.", "an engineer.", "Batman", "a tinkerer.", "a gamer.", "running out of ideas to put here.", "Ironman.", "looking for a Job"]
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
	<TimeLine timeLineItems={[]}></TimeLine>
	<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Explicabo, provident consectetur inventore, magni veritatis tempora nulla officiis recusandae beatae non laudantium, alias commodi veniam sit! Rerum nobis veritatis similique eveniet?</p>
</main>

<style>
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