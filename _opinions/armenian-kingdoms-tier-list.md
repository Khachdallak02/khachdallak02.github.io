---
title: "Armenian Kingdoms Tier List"
collection: opinions
slug: armenian-kingdoms-tier-list
date: 2026-11-23
header:
  teaser: /images/opinions/Armenian Kingdom.jpg
  teaser_ratio: "16 / 9"
  teaser_fit: contain
share: false
pagination: false
redirect_from:
  - /opinions/armenian-kings-tier-list/
---
{% assign d = site.data.armenian_kingdoms %}{% assign ui = d.ui %}
<style>
  /* Yerevanyan: Armenian text font by Renderforest, free for personal and commercial use */
  @font-face { font-family: "Yerevanyan"; src: url("/assets/fonts/yerevanyan-regular.otf") format("opentype"); font-weight: 400; font-display: swap; }
  @font-face { font-family: "Yerevanyan"; src: url("/assets/fonts/yerevanyan-bold.otf") format("opentype"); font-weight: 700; font-display: swap; }
  /* Artsakh: Armenian display font (capitals only) by Sargis Qalajyan & Narek Tsarukyan, free for personal and commercial use */
  @font-face { font-family: "Artsakh"; src: url("/assets/fonts/artsakh.ttf") format("truetype"); font-display: swap; }
  .akt { font-family: "Space Grotesk", "Yerevanyan", sans-serif; }
  .akt:not(.akt-lang-en) { font-family: "Yerevanyan", "Space Grotesk", serif; }
  /* Armenian titles and kingdom names use the display font */
  .page__title--opinion.akt-title-hy,
  .akt-king h3 > .akt-hy,
  .akt-profiles-head > .akt-hy,
  .akt-faq-item h2 > .akt-hy { font-family: "Artsakh", "Yerevanyan", serif; font-weight: 400; letter-spacing: 0.04em; }
  .page__title--opinion.akt-title-hy { font-size: 2.6rem; line-height: 1.05; }
  .akt-king h3 > .akt-hy { font-size: 1.7rem; line-height: 1.05; }
  .akt-profiles-head > .akt-hy { font-size: 2rem; }
  .akt-faq-item h2 > .akt-hy { font-size: 1.5rem; }
  .akt-faq-item h2 > .akt-hy .akt-placeholder { font-family: "Yerevanyan", serif; font-size: 1rem; letter-spacing: 0; }
  /* language switching: Armenian is the default */
  .akt .akt-en { display: none; }
  .akt.akt-lang-en .akt-en { display: revert; }
  .akt.akt-lang-en .akt-hy { display: none; }
  .akt-langbar { display: flex; align-items: center; gap: 0.75rem; flex-wrap: wrap; margin: 0 0 1.5rem; }
  .akt-langbtn {
    display: inline-flex; align-items: center; gap: 0.45rem;
    font: inherit; font-size: 0.85rem; font-weight: 600; cursor: pointer;
    padding: 0.4rem 0.85rem; border-radius: 999px;
    border: 1px solid var(--global-border-color); background: transparent; color: var(--global-text-color);
    transition: border-color 0.2s ease, color 0.2s ease;
  }
  .akt-langbtn:hover { border-color: var(--global-link-color); color: var(--global-link-color); }
  .akt-ai-note { margin: 0; font-size: 0.82rem; color: var(--global-text-color-light); font-style: italic; }
  .akt-placeholder { opacity: 0.55; font-style: italic; }

  .akt-faq { display: flex; flex-direction: column; gap: 1.25rem; margin: 0 0 2rem; }
  .akt-faq-item { border: 1px solid var(--global-border-color); border-radius: 10px; padding: 1rem 1.15rem 1.05rem; background: rgba(0, 0, 0, 0.02); }
  html[data-theme="dark"] .akt-faq-item { border-color: rgba(255, 255, 255, 0.16); background: rgba(255, 255, 255, 0.06); }
  .akt-faq-item h2 { margin: 0 0 0.55rem; font-size: 1.05rem; letter-spacing: 0.01em; }
  .akt-faq-item p { margin: 0; line-height: 1.6; }
  .akt-attrs { display: flex; flex-direction: column; gap: 0.5rem; margin-top: 0.85rem; }
  .akt-attr { display: flex; align-items: flex-start; gap: 0.6rem; line-height: 1.5; }
  .akt-attr img { width: 22px !important; height: 22px !important; max-width: none !important; margin-top: 0.15rem; flex-shrink: 0; }

  .akt-tierlist-wrap { margin: 0 0 2rem; }
  .akt-tierlist-wrap iframe { display: block; width: 100%; }
  .akt-profiles-head { margin: 0 0 1rem; }

  .akt-king { display: grid; grid-template-columns: 132px 1fr; gap: 1.1rem; padding: 1.1rem 0; border-bottom: 1px solid var(--global-border-color); scroll-margin-top: 5.5rem; }
  html[data-theme="dark"] .akt-king { border-bottom-color: rgba(255, 255, 255, 0.12); }
  .akt-king:last-child { border-bottom: 0; padding-bottom: 0; }
  .akt-flag { width: 132px; height: 88px; border-radius: 8px; border: 1px solid var(--global-border-color); background: #120d07; display: flex; align-items: center; justify-content: center; overflow: hidden; }
  html[data-theme="dark"] .akt-flag { border-color: rgba(255, 255, 255, 0.14); }
  .akt-flag img { width: 100%; height: 100%; object-fit: contain; padding: 6px; box-sizing: border-box; }
  .akt-flag-mono { width: 58px; height: 58px; border-radius: 50%; display: flex; align-items: center; justify-content: center; font-family: "Noto Sans Armenian", sans-serif; font-weight: 700; font-size: 1.25rem; color: #f3e6c2; border: 3px solid #c9a24b; }
  .akt-king h3 { margin: 0 0 0.2rem; font-size: 1.12rem; line-height: 1.3; }
  .akt-meta { margin: 0 0 0.6rem; font-size: 0.88rem; opacity: 0.7; font-variant-numeric: tabular-nums; }
  .akt-king p { margin: 0 0 0.65rem; line-height: 1.6; max-width: 42rem; }
  .akt-badges { display: flex; flex-wrap: wrap; gap: 0.35rem 0.9rem; margin: 0 0 0.7rem; }
  .akt-badge { display: inline-flex; align-items: center; gap: 0.3rem; }
  .akt-badge img { width: 28px !important; height: 28px !important; max-width: none !important; object-fit: contain; display: block; }
  .akt-val { font-weight: 700; font-size: 1rem; font-variant-numeric: tabular-nums; line-height: 1; }
  .akt-badge--dip .akt-val { color: #5aa0d0; }
  .akt-badge--mar .akt-val { color: #cf4438; }
  .akt-badge--ste .akt-val { color: #c9a020; }
  .akt-badge--int .akt-val { color: #9b76c4; }
  .akt-badge--lea .akt-val { color: #46b48a; }
  html[data-theme="dark"] .akt-badge--ste .akt-val { color: #e0b13c; }
  .akt-total { font-size: 0.88rem; opacity: 0.75; align-self: center; }
  .akt-tier { display: inline-block; font-size: 0.72rem; font-weight: 700; letter-spacing: 0.04em; text-transform: uppercase; padding: 0.12rem 0.45rem; border-radius: 4px; vertical-align: middle; margin-left: 0.35rem; color: #1a120a; }
  .akt-tier-s { background: #e0a93c; } .akt-tier-a { background: #e07c2f; } .akt-tier-b { background: #d8c24a; }
  .akt-tier-c { background: #8fb84a; } .akt-tier-d { background: #5f93b8; } .akt-tier-f { background: #bb8866; }
  .akt-king--flash { animation: aktFlash 1.2s ease; }
  @keyframes aktFlash { 0%, 100% { background: transparent; } 35% { background: rgba(201, 162, 75, 0.14); } }
  @media (max-width: 640px) { .akt-king { grid-template-columns: 1fr; } }
</style>

<div class="akt" id="akt-root" lang="hy">

<div class="akt-langbar">
  <button type="button" class="akt-langbtn" id="akt-langbtn" aria-label="Switch language"><i class="fas fa-language" aria-hidden="true"></i> <span class="akt-hy">{{ ui.switch_to_en }}</span><span class="akt-en">{{ ui.switch_to_hy }}</span></button>
  <p class="akt-ai-note akt-en">{{ ui.ai_notice_en }}</p>
</div>

<div class="akt-faq">
{% for item in d.intro %}
  <div class="akt-faq-item">
    <h2><span class="akt-hy">{% if item.q_hy != "" %}{{ item.q_hy }}{% else %}<span class="akt-placeholder">{{ ui.placeholder_hy }}</span>{% endif %}</span><span class="akt-en">{% if item.q_en != "" %}{{ item.q_en }}{% else %}<span class="akt-placeholder">{{ ui.placeholder_en }}</span>{% endif %}</span></h2>
    <p><span class="akt-hy">{% if item.a_hy != "" %}{{ item.a_hy }}{% else %}<span class="akt-placeholder">{{ ui.placeholder_hy }}</span>{% endif %}</span><span class="akt-en">{% if item.a_en != "" %}{{ item.a_en }}{% else %}<span class="akt-placeholder">{{ ui.placeholder_en }}</span>{% endif %}</span></p>
    {% if forloop.last %}
    <div class="akt-attrs">
      {% for s in d.skills %}{% assign icon = s.name_en | downcase %}
      <div class="akt-attr"><img src="/images/opinions/ck3/{{ icon }}.png" alt="" width="22" height="22"><span><strong><span class="akt-hy">{{ s.name_hy }}</span><span class="akt-en">{{ s.name_en }}</span></strong> — <span class="akt-hy">{% if s.desc_hy != "" %}{{ s.desc_hy }}{% else %}<span class="akt-placeholder">{{ ui.placeholder_hy }}</span>{% endif %}</span><span class="akt-en">{% if s.desc_en != "" %}{{ s.desc_en }}{% else %}<span class="akt-placeholder">{{ ui.placeholder_en }}</span>{% endif %}</span></span></div>
      {% endfor %}
    </div>
    {% endif %}
  </div>
{% endfor %}
</div>

<div class="akt-tierlist-wrap">
  <iframe id="akt-frame" src="/assets/tierlists/armenian-kingdoms-tierlist.html?v=4" title="Armenian Kingdoms Tier List" loading="lazy" scrolling="no" style="height: 900px; border: 0; border-radius: 14px; overflow: hidden; background: #0e0b07;"></iframe>
</div>

<h2 class="akt-profiles-head"><span class="akt-hy">{{ ui.profiles_hy }}</span><span class="akt-en">{{ ui.profiles_en }}</span></h2>

<div class="akt-profiles">
{% for k in d.kingdoms %}
  {% assign total = 0 %}{% for v in k.stats %}{% assign total = total | plus: v %}{% endfor %}
  {% if k.tier and k.tier != "" %}{% assign tier = k.tier %}
  {% elsif total >= 78 %}{% assign tier = "S" %}{% elsif total >= 70 %}{% assign tier = "A" %}{% elsif total >= 62 %}{% assign tier = "B" %}
  {% elsif total >= 54 %}{% assign tier = "C" %}{% elsif total >= 46 %}{% assign tier = "D" %}{% else %}{% assign tier = "F" %}{% endif %}
  <article class="akt-king" id="kingdom-{{ k.id }}">
    <div class="akt-flag">{% if k.flag and k.flag != "" %}<img src="{{ k.flag }}" alt="" loading="lazy">{% else %}<span class="akt-flag-mono" style="background: {{ k.color }};">{{ k.mono }}</span>{% endif %}</div>
    <div>
      <h3><span class="akt-hy">{{ k.name_hy }}</span><span class="akt-en">{{ k.name_en }}</span> <span class="akt-tier akt-tier-{{ tier | downcase }}">{{ tier }} <span class="akt-hy">{{ ui.tier_hy }}</span><span class="akt-en">{{ ui.tier_en }}</span></span></h3>
      <p class="akt-meta"><span class="akt-hy">{{ k.period_hy }} · {{ ui.capital_hy }}՝ {{ k.capital_hy }}</span><span class="akt-en">{{ k.period_en }} · {{ ui.capital_en }}: {{ k.capital_en }}</span></p>
      <div class="akt-badges">
        {% for s in d.skills %}{% assign icon = s.name_en | downcase %}
        <span class="akt-badge akt-badge--{{ s.key }}" title="{{ s.name_en }}"><img src="/images/opinions/ck3/{{ icon }}.png" alt="{{ s.name_en }}" width="28" height="28"><span class="akt-val">{{ k.stats[forloop.index0] }}</span></span>
        {% endfor %}
        <span class="akt-total"><span class="akt-hy">{{ ui.total_hy }}</span><span class="akt-en">{{ ui.total_en }}</span>: <strong>{{ total }}</strong></span>
      </div>
      <p><span class="akt-hy">{% if k.text_hy != "" %}{{ k.text_hy }}{% else %}<span class="akt-placeholder">{{ ui.placeholder_hy }}</span>{% endif %}</span><span class="akt-en">{% if k.text_en != "" %}{{ k.text_en }}{% else %}<span class="akt-placeholder">{{ ui.placeholder_en }}</span>{% endif %}</span></p>
    </div>
  </article>
{% endfor %}
</div>

<p class="akt-ai-note" style="margin-top: 1.5rem;"><span class="akt-hy">{{ ui.credits_hy }}</span><span class="akt-en">{{ ui.credits_en }}</span></p>

</div>

<script>
(function () {
  var TITLE = { hy: {{ ui.title_hy | jsonify }}, en: {{ ui.title_en | jsonify }} };
  var root = document.getElementById("akt-root");
  var frame = document.getElementById("akt-frame");
  var lang = "hy";
  try { var st = localStorage.getItem("aktLang"); if (st === "en" || st === "hy") lang = st; } catch (e) {}

  function applyLang(l, tellFrame) {
    lang = l;
    root.classList.toggle("akt-lang-en", l === "en");
    root.setAttribute("lang", l);
    var h1 = document.querySelector(".page__title--opinion");
    if (h1) { h1.textContent = TITLE[l]; h1.classList.toggle("akt-title-hy", l === "hy"); }
    try { localStorage.setItem("aktLang", l); } catch (e) {}
    if (tellFrame && frame && frame.contentWindow) frame.contentWindow.postMessage({ type: "akt-lang", lang: l }, window.location.origin);
  }
  applyLang(lang, false);
  if (frame) frame.addEventListener("load", function () { frame.contentWindow.postMessage({ type: "akt-lang", lang: lang }, window.location.origin); });
  document.getElementById("akt-langbtn").addEventListener("click", function () { applyLang(lang === "hy" ? "en" : "hy", true); });

  function aktScrollTo(anchor) {
    var el = document.getElementById(anchor);
    if (!el) { window.location.hash = anchor; return; }
    var top = el.getBoundingClientRect().top + window.pageYOffset - 88;
    window.scrollTo({ top: Math.max(0, top), behavior: "smooth" });
    el.classList.remove("akt-king--flash"); void el.offsetWidth; el.classList.add("akt-king--flash");
    window.setTimeout(function () { el.classList.remove("akt-king--flash"); }, 1200);
  }
  window.addEventListener("message", function (e) {
    if (!e.data) return;
    if (e.data.type === "akt-height") { if (frame && e.data.height) frame.style.height = e.data.height + "px"; return; }
    if (e.data.type === "akt-scroll" && e.data.anchor) aktScrollTo(e.data.anchor);
  });
  if (window.location.hash && window.location.hash.indexOf("kingdom-") === 1) {
    window.setTimeout(function () { aktScrollTo(window.location.hash.slice(1)); }, 300);
  }
})();
</script>
