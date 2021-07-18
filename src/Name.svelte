<script lang="ts">
	import Typewriter from 'svelte-typewriter'
	export let name: string = "Nico Bleiler";
    export let attributes: Array<string> = ["a Developer."];
</script>

<div class="center">
    <img id="avatar" src="/images/me.jpg" alt="Avatar">
    <h1>
        <span id="name">{name}</span>
    </h1>
    <span id="description">I am 
        <Typewriter loop={3000} interval={100}>
            {#each attributes as attribute}
            <strong>{attribute}</strong>
            {/each}
        </Typewriter>
    </span>
</div>

<style>
    #avatar {
        height: 250px;
        border-radius: 50%;
        filter: grayscale(100%);
    }
    div {
        font-family:  Arial, sans-serif;
        text-align: center;
        color: #fff;
    }
    #name {
        font-size: 8vw;
        letter-spacing: 0;
    }
    #description {
        margin: 1em 0 1.4em 0;
        line-height: 1.75;
        font-size: 30px;
    }
    #description :global(.typewriter-container) {
        display: inline;
    }
</style>