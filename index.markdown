---
layout: page
---

# Bienvenue sur le site de l'équipe DIPI

> DIPI, c'est quoi ?
>
> Données et incubation de produits innovants !

{% assign startups = site.startups %}
{% for startup in startups %}
<div>
    <a href="{% link _startups/{{startup.slug}}.md %}">{{startup.title}}</a>
</div>
{% endfor %}
