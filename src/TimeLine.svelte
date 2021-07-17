<script lang="ts">
    import TimeLineItem from './TimeLineItem.svelte';
	export let title: string = "Timeline";
	export let subTitle: string = "of my Experience";
	export let timeLineItems: Array<any>;
</script>

<div class="timeline-container" id="timeline-1">
    <div class="timeline-header">
        <h2 class="timeline-header__title">{title}</h2>
        <h3 class="timeline-header__subtitle">{subTitle}</h3>
    </div>
    <div class="timeline">
        {#each timeLineItems as TimeLineItemData}
            <TimeLineItem {...TimeLineItemData} />
        {/each}
    </div>
</div>

<style>
    .timeline {
        display: flex;
        margin: 0 auto;
        flex-wrap: wrap;
        flex-direction: column;
        max-width: 700px;
        position: relative;
    }
    .timeline:before {
        position: absolute;
        left: 50%;
        width: 2px;
        height: 100%;
        margin-left: -1px;
        content: "";
        background: rgba(255, 255, 255, .07);
    }
    .timeline-container {
        width: 100%;
        position: relative;
        padding: 80px 0;
        transition: 0.3s ease 0s;
        background-attachment: fixed;
        background-size: cover;
    }
    .timeline-container:before {
        position: absolute;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        content: "";
    }
    .timeline-header {
        width: 100%;
        text-align: center;
        margin-bottom: 80px;
        position: relative;
    }
    .timeline-header__title {
        color: #fff;
        font-size: 46px;
        font-family:  Arial, sans-serif;
        font-weight: normal;
        margin: 0;
    }
    .timeline-header__subtitle {
        color: rgba(255, 255, 255, .5);
        font-family:  Arial, sans-serif;
        font-size: 16px;
        letter-spacing: 5px;
        margin: 10px 0 0 0;
        font-weight: normal;
    } 
    @media only screen and (max-width: 767px) {
        .timeline:before {
            left: 40px;
        }
    }
</style>