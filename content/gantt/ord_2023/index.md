---
title: NSYSU matching fund gantt chart
summary: Website is underconstruction, so will update in the future.

date: '2023-08-30T00:00:00Z'

# Optional external URL for project (replaces project detail page).
external_link: ''



#links:
#  - icon: twitter
#    icon_pack: fab
#    name: Follow
#    url: 
url_code: ''
url_pdf: ''
url_slides: ''
url_video: ''

# Slides (optional).
#   Associate this project with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides = "example-slides"` references `content/slides/example-slides.md`.
#   Otherwise, set `slides = ""`.
# slides: example
---

This is the gantt chart for my NSYSU matching fund 2023


{{< mermaid align="left" theme="neutral" >}}
gantt
  
  title 史丹哲夫請提供甘特圖
  dateFormat  YYYY-MM-DD
  axisFormat %Y-%m
  tickInterval 2month

  section 數據採集卡
  經費動支 :buy2, 2024-01-01, 60d
  訂單    :ord2, after buy2, 21d
  運交    :del2, after ord2, 60d
  檢驗    :ins2, after del2, 14d
  償還    :rem2, after ins2, 21d
  
  section 1300nm掃頻雷射
  經費動支   :buy1, 2024-01-01, 60d
  訂單      :ord1, after buy1, 21d
  運交     :del1, after ord1, 130d
  檢驗    :ins1, after del1, 14d
  償還    :rem1, after ins1, 21d

  section 干涉儀模組及准直鏡
  經費動支   :buy1, 2024-01-01, 60d
  訂單      :ord1, after buy1, 21d
  運交     :del1, after ord1, 130d
  檢驗    :ins1, after del1, 14d
  償還    :rem1, after ins1, 21d



  section 自我評估報告
  %% self assement
  經費結報:milestone, 2024-10-31, 1d

  todayMarker off
{{< /mermaid >}}

