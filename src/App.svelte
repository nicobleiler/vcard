<script lang="ts">
	import Name from './Name.svelte';
	let name: string = "Nico Bleiler";
	let attributes: Array<string> = ["a developer.", "an engineer.", "Batman", "a tinkerer.", "a gamer.", "running out of attributes to put here.", "Ironman."]
</script>

<main>
	<header class="header center">
		<Name name={name} attributes={attributes}></Name>
	</header>
	<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Explicabo, provident consectetur inventore, magni veritatis tempora nulla officiis recusandae beatae non laudantium, alias commodi veniam sit! Rerum nobis veritatis similique eveniet?</p>
</main>

<style>
	.header {
		width: 100%;
		height: 100vh;
		background-image: linear-gradient( rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.4) ), url("/images/background-code.jpg");	
	}
	.center {
		text-align: center;
        display: flex;
        flex-flow: column;
        justify-content: center;
	}
</style>