<script lang="ts">
	export let title: string = "Timeline";
	export let subTitle: string = "of my Experience";
	export let timeLineItems: Array<object>;
</script>

<div class="timeline-container" id="timeline-1">
    <div class="timeline-header">
        <h2 class="timeline-header__title">{title}</h2>
        <h3 class="timeline-header__subtitle">{subTitle}</h3>
    </div>
    <div class="timeline">
        <div class="timeline-item timeline-item--active" data-text="School 1">
            <div class="timeline__content"><img class="timeline__img" src="https://avatars.githubusercontent.com/u/29607555?v=4" />
                <h2 class="timeline__content-title">09/2012-09/2016</h2>
                <p class="timeline__content-desc">Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloribus ex sequi saepe aperiam explicabo! Recusandae expedita delectus consectetur neque fuga doloribus perferendis corporis explicabo ad, maxime optio. Nisi, odio quae?</p>
            </div>
        </div>
        <div class="timeline-item" data-text="School 2">
            <div class="timeline__content"><img class="timeline__img" src="/images/divinci-logo.png" />
                <h2 class="timeline__content-title">09/2012-09/2016</h2>
                <p class="timeline__content-desc">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aspernatur illo deleniti ea, iusto incidunt animi perspiciatis! Laboriosam consequatur laudantium dignissimos nesciunt blanditiis voluptatem aliquam excepturi nemo, qui nulla, eaque perferendis.</p>
            </div>
        </div>
        <div class="timeline-item" data-text="Job 1">
            <div class="timeline__content"><img class="timeline__img" src="/images/bitfire-logo.png" />
                <h2 class="timeline__content-title">09/2012-09/2016</h2>
                <p class="timeline__content-desc">Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatum, totam! Officia, maiores? Doloribus rerum voluptatum sunt excepturi saepe consequatur sequi perspiciatis totam. Alias, incidunt eligendi? Facere officiis optio quisquam voluptatibus!</p>
            </div>
        </div>
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
    .timeline__content-title {
        font-weight: normal;
        font-size: 66px;
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
    .timeline:before {
        position: absolute;
        left: 50%;
        width: 2px;
        height: 100%;
        margin-left: -1px;
        content: "";
        background: rgba(255, 255, 255, .07);
    }
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
    .timeline__img {
        max-width: 100%;
        box-shadow: 0 10px 15px rgba(0, 0, 0, .4);
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
        background: rgba(99, 99, 99, 0.8);
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
</style>