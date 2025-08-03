---
title: "{{ replace .Name "-" " " | title }}"
date: {{ .Date }}
draft: false
price: "" # Price without currency symbol (currency is configured in hugo.yaml)
condition: ""
category: ""
categories: [""] # Available: Photography, Furniture, Automotive, Electronics, Sports, Health, Kitchen, Games, Entertainment
thumbnail: "images/your-item-slug/thumbnail.jpg"
images: 
  - "images/your-item-slug/image1.jpg"
  - "images/your-item-slug/image2.jpg"
sold: false
---

## Description

Brief description of the item here.

## Additional Notes

Any additional notes about the item.