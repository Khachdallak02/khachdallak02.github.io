---
layout: archive
permalink: /resources/
title: "Resources"
author_profile: true
---

{% include base_path %}

<style>
.page__title {
  text-align: center !important;
}

#resources-container {
  display: grid;
  grid-template-columns: 1fr;
  gap: 24px;
  margin-top: 20px;
}

.category-filter-btn {
  transition: all 0.3s ease;
}

.category-filter-btn:not(.active) {
  filter: grayscale(100%) brightness(0.7);
  opacity: 0.4;
}

.category-filter-btn.active {
  filter: none;
  opacity: 1;
}

/* Select-all: ghost icon button (no border), checkbox icon shows state */
.category-toggle-all-btn {
  width: 50px;
  height: 50px;
  padding: 0;
  border: none;
  border-radius: 8px;
  background: transparent;
  cursor: pointer;
  display: flex;
  align-items: center;
  justify-content: center;
  transition: background 0.2s ease, color 0.2s ease;
}

.category-toggle-all-btn i {
  font-size: 1.35rem;
  color: #9e9e9e;
  transition: color 0.2s ease;
}

.category-toggle-all-btn .fa-check-square {
  color: #2e7d32;
}

.category-toggle-all-btn:hover {
  background: rgba(0, 0, 0, 0.05);
}

.category-toggle-all-btn:hover i {
  color: #616161;
}

.category-toggle-all-btn:hover .fa-check-square {
  color: #1b5e20;
}

.category-toggle-all-btn:focus-visible {
  outline: 2px solid #2e7d32;
  outline-offset: 2px;
}

@media (max-width: 768px) {
  #resources-container {
    gap: 20px;
  }
}

.resources-search-bar {
  margin-top: 40px;
  margin-bottom: 4px;
}

.resources-search-bar__label {
  display: block;
  font-size: 0.85rem;
  font-weight: 600;
  margin-bottom: 0.4rem;
  color: var(--global-text-color-light, #555);
}

.resources-search-bar__field {
  position: relative;
  max-width: 480px;
}

.resources-search-bar__field .fa-search {
  position: absolute;
  left: 0.85rem;
  top: 50%;
  transform: translateY(-50%);
  color: var(--global-text-color-light, #888);
  pointer-events: none;
  font-size: 0.95rem;
}

.resources-search-bar__input {
  width: 100%;
  box-sizing: border-box;
  padding: 0.65rem 1rem 0.65rem 2.55rem;
  font-size: 1rem;
  line-height: 1.35;
  border: 1px solid var(--global-border-color, #dee2e6);
  border-radius: 8px;
  background: var(--global-code-background-color, #fff);
  color: var(--global-text-color, #212529);
}

.resources-search-bar__input::placeholder {
  color: var(--global-text-color-light, #6c757d);
  opacity: 1;
}

.resources-search-bar__input:focus {
  outline: 2px solid var(--global-theme-color, #0f4c81);
  outline-offset: 2px;
}
</style>

<div style="text-align: center; margin-bottom: 40px;">
  <p style="font-size: 0.9em; color: #666; margin-top: -10px; margin-bottom: 0;">This is a running list of tools which I've used and think deserve free advertisement</p>
</div>

{% comment %}Pinned resources first (pinned: 1, 2, 3…), then everyone else by date (newest first).{% endcomment %}
{% assign resources_pinned = site.resources | where_exp: "r", "r.pinned" | sort: 'pinned' %}
{% assign resources_unpinned = site.resources | where_exp: "r", "r.pinned == nil" | sort: 'date' | reverse %}
{% assign sorted = resources_pinned | concat: resources_unpinned %}
{% assign total_resources = site.resources | size %}
{% assign per_page = 10 %}

<div class="resources-search-bar">
  <label for="resources-search-input" class="resources-search-bar__label">Search resources</label>
  <div class="resources-search-bar__field">
    <i class="fas fa-search" aria-hidden="true"></i>
    <input type="search" id="resources-search-input" class="resources-search-bar__input" placeholder="Filter by title, description, or tags…" autocomplete="off" spellcheck="false" />
  </div>
</div>

<div id="category-filters" style="text-align: left; margin-top: 20px; margin-bottom: 30px; display: flex; justify-content: flex-start; gap: 12px; flex-wrap: wrap; align-items: center;">
  <button class="category-filter-btn active" data-category="High seas" title="High seas" style="width: 50px; height: 50px; border: none; border-radius: 8px; cursor: pointer; padding: 0; overflow: hidden; background: transparent; transition: all 0.3s ease; opacity: 1;">
    <img src="{{ base_path }}/images/icons/11.png" alt="High seas" style="width: 100%; height: 100%; object-fit: cover; display: block;">
  </button>
  <button class="category-filter-btn active" data-category="AI" title="AI" style="width: 50px; height: 50px; border: none; border-radius: 8px; cursor: pointer; padding: 0; overflow: hidden; background: transparent; transition: all 0.3s ease; opacity: 1;">
    <img src="{{ base_path }}/images/icons/2.svg" alt="AI" style="width: 100%; height: 100%; object-fit: cover; display: block;">
  </button>
  <button class="category-filter-btn active" data-category="Windows" title="Windows" style="width: 50px; height: 50px; border: none; border-radius: 8px; cursor: pointer; padding: 0; overflow: hidden; background: transparent; transition: all 0.3s ease; opacity: 1;">
    <img src="{{ base_path }}/images/icons/33.png" alt="Windows" style="width: 100%; height: 100%; object-fit: cover; display: block;">
  </button>
  <button class="category-filter-btn active" data-category="Browser" title="Browser" style="width: 50px; height: 50px; border: none; border-radius: 8px; cursor: pointer; padding: 0; overflow: hidden; background: transparent; transition: all 0.3s ease; opacity: 1;">
    <img src="{{ base_path }}/images/icons/browser.png" alt="Browser" style="width: 100%; height: 100%; object-fit: cover; display: block;">
  </button>
  <button class="category-filter-btn active" data-category="Android" title="Android" style="width: 50px; height: 50px; border: none; border-radius: 8px; cursor: pointer; padding: 0; overflow: hidden; background: transparent; transition: all 0.3s ease; opacity: 1;">
    <img src="{{ base_path }}/images/icons/4.png" alt="Android" style="width: 100%; height: 100%; object-fit: cover; display: block;">
  </button>
  <button class="category-filter-btn active" data-category="Gaming" title="Gaming" style="width: 50px; height: 50px; border: none; border-radius: 8px; cursor: pointer; padding: 0; overflow: hidden; background: transparent; transition: all 0.3s ease; opacity: 1;">
    <img src="{{ base_path }}/images/icons/5.webp" alt="Gaming" style="width: 100%; height: 100%; object-fit: cover; display: block;">
  </button>
  <button class="category-filter-btn active" data-category="Cryptocurrency" title="Cryptocurrency" style="width: 50px; height: 50px; border: none; border-radius: 8px; cursor: pointer; padding: 0; overflow: hidden; background: transparent; transition: all 0.3s ease; opacity: 1;">
    <img src="{{ base_path }}/images/icons/bitcoin.png" alt="Cryptocurrency" style="width: 100%; height: 100%; object-fit: cover; display: block;">
  </button>
  <button class="category-filter-btn active" data-category="Bioinformatics" title="Bioinformatics" style="width: 50px; height: 50px; border: none; border-radius: 8px; cursor: pointer; padding: 0; overflow: hidden; background: transparent; transition: all 0.3s ease; opacity: 1;">
    <img src="{{ base_path }}/images/icons/bioinformatics.png" alt="Bioinformatics" style="width: 100%; height: 100%; object-fit: cover; display: block;">
  </button>
  <button class="category-filter-btn active" data-category="Military history" title="Military history" style="width: 50px; height: 50px; border: none; border-radius: 8px; cursor: pointer; padding: 0; overflow: hidden; background: transparent; transition: all 0.3s ease; opacity: 1;">
    <img src="{{ base_path }}/images/icons/military-history.png" alt="Military history" style="width: 100%; height: 100%; object-fit: cover; display: block;">
  </button>
  <button class="category-filter-btn active" data-category="Python package" title="Python package" style="width: 50px; height: 50px; border: none; border-radius: 8px; cursor: pointer; padding: 0; overflow: hidden; background: transparent; transition: all 0.3s ease; opacity: 1;">
    <img src="{{ base_path }}/images/icons/python-package.png" alt="Python package" style="width: 100%; height: 100%; object-fit: cover; display: block;">
  </button>
  <button class="category-filter-btn active" data-category="YouTube channel" title="YouTube channel" style="width: 50px; height: 50px; border: none; border-radius: 8px; cursor: pointer; padding: 0; overflow: hidden; background: transparent; transition: all 0.3s ease; opacity: 1;">
    <img src="{{ base_path }}/images/icons/youtube.png" alt="YouTube channel" style="width: 100%; height: 100%; object-fit: cover; display: block;">
  </button>
  <button type="button" id="resources-toggle-all-btn" class="category-toggle-all-btn" title="Deselect all categories" aria-label="Deselect or select all categories"><i class="fas fa-check-square" aria-hidden="true"></i></button>
</div>

<div id="resources-container">
  {% for post in sorted %}
    {% unless post.categories contains 'High seas' %}
      {% if post.categories and post.categories.size > 0 %}
        {% assign item_cats = post.categories | join: "|" %}
      {% else %}
        {% assign item_cats = post.category | default: "" %}
      {% endif %}
      <div class="resource-item" data-categories="{{ item_cats | strip }}" style="display: none;">
        {% include archive-single-resource.html %}
      </div>
    {% endunless %}
  {% endfor %}
  {% for post in sorted %}
    {% if post.categories contains 'High seas' %}
      {% if post.categories and post.categories.size > 0 %}
        {% assign item_cats = post.categories | join: "|" %}
      {% else %}
        {% assign item_cats = post.category | default: "" %}
      {% endif %}
      <div class="resource-item" data-categories="{{ item_cats | strip }}" style="display: none;">
        {% include archive-single-resource.html %}
      </div>
    {% endif %}
  {% endfor %}
</div>

{% if total_resources > 0 %}
  <nav class="pagination" id="resources-pagination" style="margin-top: 40px;">
    <ul id="pagination-list">
      <!-- Pagination will be generated by JavaScript -->
    </ul>
  </nav>
{% endif %}

<script>
(function() {
  const perPage = {{ per_page }};
  const allResourceItems = Array.from(document.querySelectorAll('.resource-item'));
  const itemSearchText = new Map();
  allResourceItems.forEach(function (item) {
    const card = item.querySelector('.resource-card');
    const raw = card ? card.innerText : '';
    itemSearchText.set(item, raw.toLowerCase().replace(/\s+/g, ' ').trim());
  });
  let activeCategories = new Set(['High seas', 'AI', 'Windows', 'Browser', 'Android', 'Gaming', 'Cryptocurrency', 'Bioinformatics', 'Military history', 'Python package', 'YouTube channel']);
  let currentPage = 1;

  function matchesSearchQuery(item) {
    const input = document.getElementById('resources-search-input');
    const q = (input && input.value ? input.value : '').trim().toLowerCase();
    if (!q) return true;
    const hay = itemSearchText.get(item) || '';
    const parts = q.split(/\s+/).filter(Boolean);
    if (parts.length === 0) return true;
    return parts.every(function (token) { return hay.indexOf(token) !== -1; });
  }
  
  // Get page from URL or default to 1
  const urlParams = new URLSearchParams(window.location.search);
  const pageParam = urlParams.get('page');
  if (pageParam) {
    currentPage = parseInt(pageParam) || 1;
    if (currentPage < 1) currentPage = 1;
  }
  
  // Category filter functionality
  function getAllCategories() {
    return Array.from(document.querySelectorAll('.category-filter-btn')).map(btn => btn.getAttribute('data-category')).filter(Boolean);
  }
  
  function updateToggleAllButton() {
    const toggleBtn = document.getElementById('resources-toggle-all-btn');
    if (!toggleBtn) return;
    const allCats = getAllCategories();
    const allActive = allCats.length > 0 && allCats.every(c => activeCategories.has(c));
    const icon = toggleBtn.querySelector('i');
    if (icon) {
      icon.className = allActive ? 'fas fa-check-square' : 'fas fa-square';
      icon.setAttribute('aria-hidden', 'true');
    }
    toggleBtn.title = allActive ? 'Deselect all categories' : 'Select all categories';
    toggleBtn.setAttribute('aria-label', allActive ? 'Deselect all categories' : 'Select all categories');
  }
  
  function initializeCategoryFilters() {
    const filterButtons = document.querySelectorAll('.category-filter-btn');
    filterButtons.forEach(btn => {
      btn.addEventListener('click', function() {
        const category = this.getAttribute('data-category');
        if (activeCategories.has(category)) {
          activeCategories.delete(category);
          this.classList.remove('active');
        } else {
          activeCategories.add(category);
          this.classList.add('active');
        }
        currentPage = 1; // Reset to first page on filter change
        applyFilters();
        updateToggleAllButton();
      });
    });
    
    // Toggle all (deselect all / select all) button
    const toggleAllBtn = document.getElementById('resources-toggle-all-btn');
    if (toggleAllBtn) {
      toggleAllBtn.addEventListener('click', function() {
        const allCats = getAllCategories();
        const allActive = allCats.length > 0 && allCats.every(c => activeCategories.has(c));
        if (allActive) {
          activeCategories.clear();
          filterButtons.forEach(btn => {
            btn.classList.remove('active');
          });
        } else {
          allCats.forEach(c => activeCategories.add(c));
          filterButtons.forEach(btn => {
            btn.classList.add('active');
          });
        }
        currentPage = 1;
        applyFilters();
        updateToggleAllButton();
      });
    }
  }
  
  function applyFilters() {
    // Filter by category: show item if ANY of its categories are in activeCategories
    // Categories are pipe-separated so multi-word names like "High seas" stay intact
    const filteredItems = allResourceItems.filter(item => {
      const catsStr = item.getAttribute('data-categories') || '';
      const itemCats = catsStr.split('|').map(s => s.trim()).filter(Boolean);
      const catOk = itemCats.some(c => activeCategories.has(c));
      return catOk && matchesSearchQuery(item);
    });
    
    // Recalculate pagination based on filtered items
    const filteredTotalPages = Math.ceil(filteredItems.length / perPage);
    
    // Adjust currentPage if it's out of bounds after filtering
    if (currentPage > filteredTotalPages && filteredTotalPages > 0) {
      currentPage = filteredTotalPages;
    } else if (filteredTotalPages === 0) {
      currentPage = 1; // If no items, show page 1 (empty)
    }
    
    // Hide all items first
    allResourceItems.forEach(item => item.style.display = 'none');
    
    // Show items for the current page from the filtered set
    const startIndex = (currentPage - 1) * perPage;
    const endIndex = startIndex + perPage;
    for (let i = startIndex; i < endIndex && i < filteredItems.length; i++) {
      filteredItems[i].style.display = 'block';
    }
    
    updatePagination(currentPage, filteredTotalPages);
    // Update URL without reload
    const newUrl = currentPage === 1
      ? '{{ base_path }}/resources/'
      : '{{ base_path }}/resources/?page=' + currentPage;
    window.history.pushState({page: currentPage}, '', newUrl);
  }
  
  function showPage(page) {
    currentPage = page;
    applyFilters();
  }
  
  function updatePagination(page, totalPagesToShow) {
    const paginationList = document.getElementById('pagination-list');
    if (!paginationList) {
      console.error('Pagination list not found');
      return;
    }
    
    paginationList.innerHTML = '';
    
    const pages = totalPagesToShow;
    
    // If only one page, still show it if there are items
    if (pages <= 1 && allResourceItems.length > 0) {
      const li = document.createElement('li');
      li.innerHTML = '<a href="#" class="disabled current">1</a>';
      paginationList.appendChild(li);
      return;
    }
    
    // Don't show pagination if no resource items
    if (pages <= 0) {
      return;
    }
    
    // Previous button
    if (page > 1) {
      const prevLi = document.createElement('li');
      if (page === 2) {
        prevLi.innerHTML = '<a href="{{ base_path }}/resources/">Previous</a>';
      } else {
        prevLi.innerHTML = '<a href="{{ base_path }}/resources/?page=' + (page - 1) + '">Previous</a>';
      }
      prevLi.querySelector('a').addEventListener('click', function(e) {
        e.preventDefault();
        showPage(page - 1);
      });
      paginationList.appendChild(prevLi);
    } else {
      const prevLi = document.createElement('li');
      prevLi.innerHTML = '<a href="#" class="disabled"><span aria-hidden="true">Previous</span></a>';
      paginationList.appendChild(prevLi);
    }
    
    // Page numbers
    let startPage = Math.max(1, page - 2);
    let endPage = Math.min(pages, page + 2);
    
    if (startPage > 1) {
      const firstLi = document.createElement('li');
      firstLi.innerHTML = '<a href="{{ base_path }}/resources/">1</a>';
      firstLi.querySelector('a').addEventListener('click', function(e) {
        e.preventDefault();
        showPage(1);
      });
      paginationList.appendChild(firstLi);
      if (startPage > 2) {
        const ellipsis = document.createElement('li');
        ellipsis.innerHTML = '<a href="#" class="disabled">&hellip;</a>';
        paginationList.appendChild(ellipsis);
      }
    }
    
    for (let i = startPage; i <= endPage; i++) {
      const li = document.createElement('li');
      if (i === page) {
        li.innerHTML = '<a href="#" class="disabled current">' + i + '</a>';
      } else if (i === 1) {
        li.innerHTML = '<a href="{{ base_path }}/resources/">1</a>';
        li.querySelector('a').addEventListener('click', function(e) {
          e.preventDefault();
          showPage(1);
        });
      } else {
        li.innerHTML = '<a href="{{ base_path }}/resources/?page=' + i + '">' + i + '</a>';
        li.querySelector('a').addEventListener('click', function(e) {
          e.preventDefault();
          showPage(i);
        });
      }
      paginationList.appendChild(li);
    }
    
    if (endPage < pages) {
      if (endPage < pages - 1) {
        const ellipsis = document.createElement('li');
        ellipsis.innerHTML = '<a href="#" class="disabled">&hellip;</a>';
        paginationList.appendChild(ellipsis);
      }
      const lastLi = document.createElement('li');
      lastLi.innerHTML = '<a href="{{ base_path }}/resources/?page=' + pages + '">' + pages + '</a>';
      lastLi.querySelector('a').addEventListener('click', function(e) {
        e.preventDefault();
        showPage(pages);
      });
      paginationList.appendChild(lastLi);
    }
    
    // Next button
    if (page < pages) {
      const nextLi = document.createElement('li');
      nextLi.innerHTML = '<a href="{{ base_path }}/resources/?page=' + (page + 1) + '">Next</a>';
      nextLi.querySelector('a').addEventListener('click', function(e) {
        e.preventDefault();
        showPage(page + 1);
      });
      paginationList.appendChild(nextLi);
    } else {
      const nextLi = document.createElement('li');
      nextLi.innerHTML = '<a href="#" class="disabled"><span aria-hidden="true">Next</span></a>';
      paginationList.appendChild(nextLi);
    }
  }
  
  // Initialize category filters
  initializeCategoryFilters();

  const searchInput = document.getElementById('resources-search-input');
  if (searchInput) {
    searchInput.addEventListener('input', function () {
      currentPage = 1;
      applyFilters();
    });
  }
  
  // Set initial toggle-all button label
  updateToggleAllButton();
  
  // Initialize page display (this will also initialize pagination)
  applyFilters(); // Call applyFilters directly to show initial items
  
  // Handle browser back/forward
  window.addEventListener('popstate', function(e) {
    const urlParams = new URLSearchParams(window.location.search);
    const pageParam = urlParams.get('page');
    currentPage = pageParam ? parseInt(pageParam) || 1 : 1;
    applyFilters(); // Re-apply filters on popstate
  });
})();
</script>
