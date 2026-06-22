---
title: "Armenian Kings Tier List"
collection: opinions
slug: armenian-kings-tier-list
date: 2026-06-06
header:
  teaser: /images/opinions/Armenian Kingdom.jpg
  teaser_ratio: "16 / 9"
  teaser_fit: contain
share: false
pagination: false
---

<style>
  @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+Armenian:wght@400;600&display=swap');
  .akt-faq { display: flex; flex-direction: column; gap: 1.25rem; margin: 0 0 2rem; }
  .akt-faq-item {
    border: 1px solid var(--global-border-color);
    border-radius: 10px;
    padding: 1rem 1.15rem 1.05rem;
    background: rgba(0, 0, 0, 0.02);
  }
  html[data-theme="dark"] .akt-faq-item {
    border-color: rgba(255, 255, 255, 0.16);
    background: rgba(255, 255, 255, 0.06);
  }
  .akt-faq-item h2 {
    margin: 0 0 0.55rem;
    font-size: 1.05rem;
    letter-spacing: 0.01em;
    line-height: 1.35;
  }
  .akt-faq-item p { margin: 0; line-height: 1.6; }
  .akt-faq-item .akt-faq-subhead {
    margin: 1.4rem 0 0.55rem;
    font-size: 1.05rem;
    letter-spacing: 0.01em;
    line-height: 1.35;
  }
  .akt-attrs {
    display: flex;
    flex-direction: column;
    gap: 0.65rem;
    margin: 0.85rem 0 0;
    padding: 0;
    border: 0;
    background: transparent;
  }
  .akt-attr { display: flex; align-items: flex-start; gap: 0.75rem; }
  .akt-attr img { width: 22px; height: 22px; flex-shrink: 0; margin-top: 0.15rem; }
  .akt-tierlist-wrap { max-width: 920px; margin: 0 auto 2.5rem; }
  .akt-tierlist-wrap iframe { display: block; width: 100%; }
  .akt-profiles-head { margin: 0 0 1.25rem; }
  .akt-profiles { display: flex; flex-direction: column; gap: 1.75rem; }
  .akt-king {
    display: grid;
    grid-template-columns: 120px 1fr;
    gap: 1.1rem;
    padding-bottom: 1.75rem;
    border-bottom: 1px solid var(--global-border-color);
    scroll-margin-top: 5.5rem;
  }
  html[data-theme="dark"] .akt-king {
    border-bottom-color: rgba(255, 255, 255, 0.12);
  }
  .akt-king:last-child { border-bottom: 0; padding-bottom: 0; }
  .akt-king img {
    width: 120px;
    height: 150px;
    object-fit: cover;
    border-radius: 8px;
    border: 1px solid var(--global-border-color);
    background: #f5f5f5;
  }
  html[data-theme="dark"] .akt-king img {
    border-color: rgba(255, 255, 255, 0.14);
    background: #1a1a1a;
  }
  .akt-king h3 { margin: 0 0 0.2rem; font-size: 1.15rem; line-height: 1.3; }
  .akt-names-hy {
    margin: 0 0 0.35rem;
    font-family: "Noto Sans Armenian", sans-serif;
    font-size: 0.95rem;
    line-height: 1.35;
    opacity: 0.88;
  }
  .akt-reign { margin: 0 0 0.55rem; font-size: 0.92rem; opacity: 0.75; font-style: italic; }
  .akt-king p { margin: 0 0 0.65rem; line-height: 1.6; }
  .akt-skills { margin: 0 0 0.65rem; padding-left: 1.15rem; line-height: 1.55; }
  .akt-skills li { margin-bottom: 0.35rem; }
  .akt-tier-note { margin: 0; font-size: 0.95rem; }
  .akt-tier {
    display: inline-block;
    font-size: 0.72rem;
    font-weight: 700;
    letter-spacing: 0.04em;
    text-transform: uppercase;
    padding: 0.12rem 0.45rem;
    border-radius: 4px;
    vertical-align: middle;
    margin-left: 0.35rem;
  }
  .akt-tier-s { background: #e0a93c; color: #1a120a; }
  .akt-tier-a { background: #e07c2f; color: #1a120a; }
  .akt-tier-b { background: #d8c24a; color: #1a120a; }
  .akt-tier-c { background: #8fb84a; color: #1a120a; }
  .akt-tier-f { background: #bb8866; color: #1a120a; }
  .akt-king--flash { animation: aktFlash 1.2s ease; }
  @keyframes aktFlash {
    0%, 100% { background: transparent; }
    35% { background: rgba(201, 162, 75, 0.14); }
  }
  @media (max-width: 640px) {
    .akt-king { grid-template-columns: 1fr; }
    .akt-king img { width: 100%; max-width: 180px; height: auto; aspect-ratio: 4 / 5; }
  }
</style>

<div class="akt-faq">

<div class="akt-faq-item">
  <h2>Why exactly 21 kings?</h2>
  <p>Unfortunately, what we know about many Armenian kings is very limited. Kosrov II is a good example: Roman and Persian sources often confuse him with his grandfather, Khosrov I. Almost nothing survives about his life before he became king, and not much more about his reign — mostly from two Armenian historians, Pavstos Buzand (Փավստոս Բուզանդ) and Movses Khorenatsi (Մովսես Խորենացի). I had to make a subjective choice based on publicly available material and on how important I think each reign was. That is how I ended up with twenty-one kings.</p>

  <h2 class="akt-faq-subhead">Why exactly Crusader Kings III attributes?</h2>
  <p>In CK3 every ruler is defined by five attributes — the main directions a leader can be strong in. That makes it easier to compare kings when one was good in battle and another was better at building cities.</p>

  <div class="akt-attrs">
    <div class="akt-attr"><img src="/images/opinions/ck3/diplomacy.png" alt="Diplomacy" width="22" height="22"><span><strong>Diplomacy</strong> — alliances, negotiation, and keeping neighbours at bay.</span></div>
    <div class="akt-attr"><img src="/images/opinions/ck3/martial.png" alt="Martial" width="22" height="22"><span><strong>Martial</strong> — battlefield command and personal military prowess.</span></div>
    <div class="akt-attr"><img src="/images/opinions/ck3/stewardship.png" alt="Stewardship" width="22" height="22"><span><strong>Stewardship</strong> — building the realm, its economy, and its institutions.</span></div>
    <div class="akt-attr"><img src="/images/opinions/ck3/intrigue.png" alt="Intrigue" width="22" height="22"><span><strong>Intrigue</strong> — plots, schemes, and reading the court.</span></div>
    <div class="akt-attr"><img src="/images/opinions/ck3/learning.png" alt="Learning" width="22" height="22"><span><strong>Learning</strong> — scholarship, culture, and patronage of knowledge.</span></div>
  </div>
</div>

</div>

<div class="akt-tierlist-wrap">
  <iframe id="akt-frame" src="/assets/tierlists/armenian-kings-tierlist.html?v=8" title="Armenian Kings Tier List" loading="lazy" style="height: 900px; border: 0; border-radius: 14px; overflow: hidden; background: #0e0b07;"></iframe>
</div>

<h2 class="akt-profiles-head">King profiles</h2>

{% include armenian-king-profiles.html %}

<script>
(function () {
  function aktScrollToKing(anchor) {
    var el = document.getElementById(anchor);
    if (!el) {
      window.location.hash = anchor;
      return;
    }
    var top = el.getBoundingClientRect().top + window.pageYOffset - 88;
    window.scrollTo({ top: Math.max(0, top), behavior: "smooth" });
    el.classList.remove("akt-king--flash");
    void el.offsetWidth;
    el.classList.add("akt-king--flash");
    window.setTimeout(function () { el.classList.remove("akt-king--flash"); }, 1200);
  }

  window.aktScrollToKing = aktScrollToKing;

  window.addEventListener("message", function (e) {
    if (!e.data) return;
    if (e.data.type === "akt-height") {
      var f = document.getElementById("akt-frame");
      if (f && e.data.height) f.style.height = e.data.height + "px";
      return;
    }
    if (e.data.type === "akt-scroll" && e.data.anchor) {
      aktScrollToKing(e.data.anchor);
    }
  });

  if (window.location.hash && window.location.hash.indexOf("king-") === 1) {
    window.setTimeout(function () {
      aktScrollToKing(window.location.hash.slice(1));
    }, 300);
  }
})();
</script>
