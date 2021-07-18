<script lang="ts">
	export let name: string;
	export let link: string;
	export let image: string;
	export let wide: boolean = false;
	export let tall: boolean = false;
</script>

<a class="card" class:wide class:tall href={link} target="_BLANK">
    <img src={image} alt={name}/>
</a>

<style>	
	.card {
		display: flex;
		flex-direction: column;
        box-shadow: 0 10px 15px rgba(0, 0, 0, .4);
		font-size: 3rem;
		border-radius: 4px;
		transition: all 600ms;
		overflow: hidden;
		padding: 10px;
 	}
	.card img {
		height: 100%;
		width: 100%;
		object-fit: contain;
	}
	.card:hover {    
		box-shadow: 0px 0px .2em grey, 0px 0px .2em grey;
		transform: translateY(-3px) scale(.95);
	}
    .tall {
      grid-row: span 2 / auto;
    }
    .wide {
      grid-column: span 2 / auto;
    }
</style>