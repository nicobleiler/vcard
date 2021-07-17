<script lang="ts">
	import Typewriter from 'svelte-typewriter'
	export let name: string = "Nico Bleiler";
    export let attributes: Array<string> = ["a Developer."];
    var currentAttribute: string = attributes[0];
    var currentAttributeIndex: number = 0;
    var showAttribute: boolean = false;

    setInterval(
        function() {
            console.log(currentAttribute);
            console.log(showAttribute);
            showAttribute = false;
            console.log(showAttribute);
            currentAttributeIndex++;
            if(currentAttributeIndex < attributes.length && currentAttributeIndex >= 0) {
                currentAttribute = attributes[currentAttributeIndex];
            } else if(currentAttributeIndex == attributes.length) {
                currentAttributeIndex = 0;
                currentAttribute = attributes[currentAttributeIndex];
            } else {
                currentAttribute = "having a problem with my function..."
            }
            showAttribute = true;
            console.log(showAttribute);
        },
        1000
    );

    function typewriter(node, { speed = 100 }) {
        const valid: boolean = (
            node.childNodes.length === 1 && node.childNodes[0].nodeType === Node.TEXT_NODE
        );

        if (!valid) {
            throw new Error(`This transition only works on elements with a single text node child`);
        }

        const text: string = node.textContent;
        const duration: number = text.length * speed;

        return {
            duration,
            tick: t => {
                const i: number = ~~(text.length * t);
                node.textContent = text.slice(0, i);
            }
        };
    }
</script>

<div class="center">
    <h1>
        <span id="name">{name}</span>
    </h1>
    <span id="description">I am 
        <Typewriter loop>
            <strong>Looping</strong>
            <strong>Looping</strong>
        </Typewriter>
    </span>
</div>

<style>
    div {
        font-family:  Arial, sans-serif;
        text-align: center;
        color: #fff;
    }
    #name {
        font-size: 10vw;
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