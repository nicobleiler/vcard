<script lang="ts">
    import SkillItem from './SkillItem.svelte';
	export let skills: Array<any>;
    let title: string = "Languages, Frameworks &";
    let subTitle: string = "Technologies";
</script>

<div class="skill-container">
    <div class="skill-header">
        <h2 class="skill-header skill-title">{title}</h2>
        <h3 class="skill-header skill-subtitle">{subTitle}</h3>
    </div>
    <div class="grid">
        {#each skills as skill}
            <SkillItem {...skill} />
        {/each}
    </div>
</div>

<style>
    .skill-container {
        display: flex;
        margin: 0 auto;
        flex-direction: column;
        max-width: 800px;
        margin-bottom: 50px;
    }
    .grid {
        display: grid;
        gap: 1rem;
        grid-template-columns: repeat(auto-fit, minmax(240px, 1fr));
        grid-auto-rows: 240px;
    }
    @media only screen and (max-width: 767px) {
        .grid {
            grid-template-columns: repeat(auto-fit, minmax(100px, 1fr));
            grid-auto-rows: 100px;
        }
    }
    .skill-header {
        width: 100%;
        text-align: center;
        margin-bottom: 80px;
        position: relative;
    }
    .skill-header .skill-title {
        color: #fff;
        font-size: 46px;
        font-family:  Arial, sans-serif;
        font-weight: normal;
        margin: 0;
    }
    .skill-header .skill-subtitle {
        color: rgba(255, 255, 255, .5);
        font-family:  Arial, sans-serif;
        font-size: 16px;
        letter-spacing: 5px;
        margin: 10px 0 0 0;
        font-weight: normal;
    } 
</style>