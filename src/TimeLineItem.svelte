<script lang="ts">
    let visible: boolean = false;
	export let image: string;
	export let timeRange: string;
	export let title: string;
	export let subtitle: string;
	export let description: string;
	export let location: string;
	let element: Element;
	let scrollY: number;

    $: target = window.innerHeight / 2;

    window.addEventListener('scroll', checkVisibility);
    window.addEventListener('resize', checkVisibility);


    function checkVisibility() {
		if(target > element.getBoundingClientRect().top && target < element.getBoundingClientRect().bottom) {
            visible = true;
        } else {
            visible = false;
        }
	}
</script>

<svelte:window bind:scrollY={scrollY}/>

<div class="timeline-item" class:timeline-item--active={visible} data-text="{location}" bind:this={element}>
    <div class="timeline__content"><img class="timeline__img" src="{image}" alt="Logo"/>
        <h2 class="timeline__content-title">{timeRange}</h2>
        <small>{title}</small>
        <br>
        <small>{subtitle}</small>
        <p class="timeline__content-desc">{@html description}</p>
    </div>
</div>

<style>
    .timeline-item {
        padding: 40px 0;
        opacity: 0.3;
        filter: blur(2px);
        transition: 0.5s;
        box-sizing: border-box;
        width: calc(50% - 40px);
        display: flex;
        position: relative;
        transform: translateY(-80px);
    }
    .timeline-item:before {
        content: attr(data-text);
        letter-spacing: 3px;
        width: 100%;
        position: absolute;
        color: rgba(255, 255, 255, .5);
        font-size: 13px;
        font-family:  Arial, sans-serif;
        border-left: 2px solid rgba(255, 255, 255, .5);
        top: 70%;
        margin-top: -5px;
        padding-left: 15px;
        opacity: 0;
        right: calc(-100% - 56px);
    }
    .timeline-item--active {
        opacity: 1;
        transform: translateY(0);
        filter: blur(0px);
    }
    .timeline-item--active:before {
        top: 50%;
        transition: 0.3s all 0.2s;
        opacity: 1;
    }
    .timeline-item--active .timeline__content-title {
        margin: -50px 0 20px 0;
    }
    @media only screen and (max-width: 767px) {
        .timeline-item {
            align-self: baseline !important;
            width: 100%;
            padding: 0 30px 150px 80px;
        }
        .timeline-item:before {
            left: 10px !important;
            padding: 0 !important;
            top: 50px;
            text-align: center !important;
            width: 60px;
            border: none !important;
        }
        .timeline-item:last-child {
            padding-bottom: 40px;
        }
    }
    .timeline-item:nth-child(even) {
        align-self: flex-end;
    }
    .timeline-item:nth-child(even):before {
        right: auto;
        text-align: right;
        left: calc(-100% - 56px);
        padding-left: 0;
        border-left: none;
        border-right: 2px solid rgba(255, 255, 255, .5);
        padding-right: 15px;
    }
    .timeline__img {
        max-width: 100%;
        box-shadow: 0 10px 15px rgba(0, 0, 0, .4);
    }
    .timeline__content-title {
        font-weight: normal;
        font-size: 50px;
        margin: -10px 0 0 0;
        transition: 0.4s;
        padding: 0 10px;
        box-sizing: border-box;
        font-family:  Arial, sans-serif;
        color: #fff;
    }
    .timeline__content-desc {
        margin: 0;
        font-size: 15px;
        box-sizing: border-box;
        color: rgba(255, 255, 255, .7);
        font-family:  Arial, sans-serif;
        font-weight: normal;
        line-height: 25px;
    }
    small {
        margin: 0;
        font-size: 12px;
        box-sizing: border-box;
        color: rgba(255, 255, 255, .7);
        font-family:  Arial, sans-serif;
        font-weight: normal;
        line-height: 25px;
    }
</style>