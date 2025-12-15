---
layout: page
---

# Bienvenue sur le site de l'équipe DIPI

> DIPI, c'est quoi ?
>
> Données et incubation de produits innovants !

{% assign startups = site.startups %}
{% for startup in startups %}
<div>{{startup.title}}</div>
{% endfor %}
