<script lang="ts">
	import Name from './Name.svelte';
	import Skills from './Skills.svelte';
	import ScrollIcon from './ScrollIcon.svelte';
	import TimeLine from './TimeLine.svelte';
	let name: string = "Nico Bleiler";
	let attributes: Array<string> = [
		"a developer.",
		"an engineer.",
		"a tinkerer.",
		"a gamer.",
		"running out of text to put here.",
		"Iron Man.",
		"a consultant."
	];
	let skillItems = [
		{
			image: "/images/skills/PythonLogo.png",
			name: "Python",
			link: "https://python.org",
		},
		{
			image: "/images/skills/DjangoLogo.png",
			name: "Django",
			link: "https://djangoproject.com",
			wide: true,
		},
		{
			image: "/images/skills/JSLogo.png",
			name: "JavaScript",
			link: "https://wikipedia.org/wiki/JavaScript",
		},
		{
			image: "/images/skills/CSS3Logo.png",
			name: "CSS",
			link: "https://wikipedia.org/wiki/Cascading_Style_Sheets",
		},
		{
			image: "/images/skills/HTML5Logo.png",
			name: "HTML",
			link: "https://wikipedia.org/wiki/HTML",
		},
		{
			image: "/images/skills/CSharpLogo.png",
			name: "C#",
			link: "https://wikipedia.org/wiki/C_Sharp_(programming_language)",
		},
		{
			image: "/images/skills/VueLogo.png",
			name: "Vue.js",
			link: "https://vuejs.org",
		},
		{
			image: "/images/skills/GraphQLLogo.png",
			name: "GraphQL",
			link: "https://graphql.org",
		},
		{
			image: "/images/skills/PHPLogo.png",
			name: "PHP",
			link: "https://wikipedia.org/wiki/PHP",
			wide: true,
		},
		{
			image: "/images/skills/GitLogo.png",
			name: "Git",
			link: "https://git-scm.com",
		},
		{
			image: "/images/skills/LaravelLogo.png",
			name: "Laravel",
			link: "https://laravel.com",
		},
		{
			image: "/images/skills/MySQLLogo.png",
			name: "MySQL",
			link: "https://wikipedia.org/wiki/MySQL",
			wide: true,
		},
		{
			image: "/images/skills/DockerLogo.png",
			name: "Docker",
			link: "https://www.docker.com/",
			wide: true,
		},
		{
			image: "/images/skills/SvelteLogo.png",
			name: "Svelte",
			link: "https://svelte.dev/",
		},
		{
			image: "/images/skills/KubernetesLogo.png",
			name: "Kubernetes",
			link: "https://kubernetes.io",
		},
		{
			image: "/images/skills/UnityLogo.png",
			name: "Unity",
			link: "https://unity.com",
			wide: true,
		},
	];
	let timeLineItems = [
		{
			image: "/images/timeline/pexon-logo.png",
			timeRange: "2021",
			location: "Pexon Consulting GmbH",
			title: "Cloud Consultant",
			subtitle: "10/2021 - present",
			description: "<ul><li>Working with Kubernetes on AWS</li><li>Provisioning infrastructure using Terraform</li><li>CI/CD using GitHub & GitLab</li><li>Manage kubernetes deployments</li></ul>"
		},
		{
			image: "/images/timeline/bitfire-logo.png",
			timeRange: "2020",
			location: "bitfire GmbH",
			title: "Software developer",
			subtitle: "09/2020 - 09/2021",
			description: "<ul><li>Automating scripts on 1500 clients</li><li>Ticketsystem synchronizations<ul><li>MS Teams calls</li><li>Monitoring tool</li><li>Remotesupport sessions</li></ul></li><li>Database administration</li></ul>"
		},
		{
			image: "/images/timeline/divinci-logo.png",
			timeRange: "2017",
			location: "Divinci GmbH",
			title: "Software development apprenticeship",
			subtitle: "09/2017 - 09/2020",
			description: "<ul><li>Course booking plugin for Hospital staff</li><li>Course booking and management website for healthcare personnel</li><li>Payment gateway implementations</li><li>Warehouse management tool for Ingersoll Rand</li><li>Hotel booking tool for construction workers</li><li>Backup monitoring service for Ingersoll Rand</li><li>Document management tool for tax advisors</li></ul>"
		},
		{
			image: "/images/timeline/divinci-logo.png",
			timeRange: "2017",
			location: "Divinci GmbH",
			title: "Software development internship",
			subtitle: "02/2017 - 09/2017",
			description: "<ul><li>Quiz game</li><li>DJ booking website</li><li>Custom Product Request workflow</li><li>Wordpress websites</li></ul>"
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
	<Skills skills={skillItems}></Skills>
	<div class="flex-box contact">
		<div class="flex-item">
			<h2>📍 <a href="https://www.google.com/maps/place/97688+Bad+Kissingen" target="_BLANK">Bad Kissingen</a></h2>
		</div>
		<div class="flex-item">
			<h2>📱 <a href="tel:+491732090067">+49 173 209 00 67</a></h2>
		</div>
		<div class="flex-item">
			<h2>📧 <a href="mailto:info@bleiler.dev" target="_BLANK">info@bleiler.dev</a></h2>
		</div>
		<div class="flex-item">
			<h2>📂 <a href="https://github.com/nicobleiler/vcard" target="_BLANK">GitHub</a></h2>
		</div>
		<div class="flex-item">
			<h2>Powered by <a href="https://svelte.dev" target="_BLANK">Svelte</a></h2>
		</div>
	</div>
</main>

<style>
	.flex-box {
		width: 100%;
		display: flex;
		flex-direction: row;
		justify-content: center;
		align-items: stretch;
    	flex-wrap: wrap;
	}
	.flex-item {
		flex: 1;
		align-self: center;
		align-items: center;
		align-content: center;
    	text-align: center;
	}
	.flex-item h2 {
		font-weight: lighter;
	}	
    @media only screen and (max-width: 767px) {
		.flex-box {
			flex-direction: column;
		}
	}
	.header {
		width: 100%;
		height: 100vh;
		background-image: linear-gradient(rgba(0, 0, 0, .95), rgba(0, 0, 0, 0.75) ), url("/images/background-code-min.jpg");	
  		background-size: cover;
  		background-repeat: no-repeat;
        filter: grayscale(70%);
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
		top: 100%;
		left: 50%;
	}
</style>