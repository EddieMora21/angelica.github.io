{% comment %} productview-section3.liquid - Sección de pestañas convertida a
slider/carrusel {% endcomment %}

{{ "productview-section3.css" | asset_url | stylesheet_tag }}
{% render 'floating-product-button' %}
<div class="menoplay-section" id="menoplay-section">
  <div class="menoplay-container">
    <div class="menoplay-header">
      <div class="menoplay-subtitle">{{ section.settings.subtitle }}</div>
      <h1 class="menoplay-title">{{ section.settings.title }}</h1>
    </div>

    <div class="menoplay-slider-container">
      <!-- Flecha izquierda para navegación -->
      <button class="menoplay-arrow arrow-left" onclick="prevTab()">
        <svg
          width="24"
          height="24"
          viewBox="0 0 24 24"
          fill="none"
          xmlns="http://www.w3.org/2000/svg"
        >
          <path
            d="M15 18L9 12L15 6"
            stroke="currentColor"
            stroke-width="2"
            stroke-linecap="round"
            stroke-linejoin="round"
          />
        </svg>
      </button>

      <div class="menoplay-tabs-wrapper">
        <div class="menoplay-tabs" id="menoplay-tabs">
          {% for block in section.blocks %} {% if block.type == 'tab' %}
          <button
            class="menoplay-tab"
            id="tab-{{ forloop.index0 }}"
            onclick="showTab({{ forloop.index0 }})"
          >
            {{ block.settings.tab_title }}
          </button>
          {% endif %} {% endfor %}
        </div>
      </div>

      <!-- Flecha derecha para navegación -->
      <button class="menoplay-arrow arrow-right" onclick="nextTab()">
        <svg
          width="24"
          height="24"
          viewBox="0 0 24 24"
          fill="none"
          xmlns="http://www.w3.org/2000/svg"
        >
          <path
            d="M9 18L15 12L9 6"
            stroke="currentColor"
            stroke-width="2"
            stroke-linecap="round"
            stroke-linejoin="round"
          />
        </svg>
      </button>
    </div>

    <div class="menoplay-content">
      {% for block in section.blocks %} {% if block.type == 'tab' %}
      <div
        class="menoplay-tab-content {% if block.settings.show_stats %}fullwidth{% endif %}"
        id="content-{{ forloop.index0 }}"
      >
        <div class="menoplay-info">
          <h2 class="menoplay-info-title">{{ block.settings.info_title }}</h2>

          <div class="menoplay-quote">
            {{ block.settings.tab_content }}

            {% if block.settings.signature != blank and block.settings.signature
            != "none" %}
            <p class="menoplay-signature">{{ block.settings.signature }}</p>
            {% endif %} {% if block.settings.show_stats %}
            <div class="menoplay-stats">
              <!-- Primera sección de estadísticas -->
              {% if block.settings.show_intro_text %}
              <p class="menoplay-intro">{{ block.settings.intro_text }}</p>
              {% endif %} {% if block.settings.show_timeframe %}
              <p
                class="menoplay-timeframe"
                style="
                  font-size: 20px;
                  font-weight: 500;
                  display: inline-block;
                  margin: 15px 0;
                "
              >
                {{ block.settings.timeframe_text }}
              </p>
              {% endif %}

              <!-- Grid de estadísticas principales -->
              <div class="stats-grid">
                <!-- Estadística 1 -->
                <div class="stat-item">
                  <div class="stat-circle circle-purple">
                    {{ block.settings.stat1_percentage }}%
                  </div>
                  <div class="stat-text">
                    {{ block.settings.stat1_text }}
                  </div>
                </div>

                <!-- Estadística 2 -->
                <div class="stat-item">
                  <div class="stat-circle circle-teal">
                    {{ block.settings.stat2_percentage }}%
                  </div>
                  <div class="stat-text">
                    {{ block.settings.stat2_text }}
                  </div>
                </div>

                <!-- Estadística 3 -->
                <div class="stat-item">
                  <div class="stat-circle circle-blue">
                    {{ block.settings.stat3_percentage }}%
                  </div>
                  <div class="stat-text">
                    {{ block.settings.stat3_text }}
                  </div>
                </div>

                <!-- Estadística 4 -->
                <div class="stat-item">
                  <div class="stat-circle circle-green">
                    {{ block.settings.stat4_percentage }}%
                  </div>
                  <div class="stat-text">
                    {{ block.settings.stat4_text }}
                  </div>
                </div>
              </div>

              {% if block.settings.show_additional_text %}
              <p class="menoplay-additional-text">
                {{ block.settings.additional_text }}
              </p>
              {% endif %}

              <!-- Grid de síntomas -->
              {% if block.settings.show_symptoms_grid %}
              <div class="symptoms-grid">
                <!-- Síntoma 1 -->
                <div class="symptom-item">
                  <div class="symptom-icon">
                    {% if block.settings.symptom1_icon != blank %}
                    <img
                      src="{{
                        block.settings.symptom1_icon | img_url : 'master'
                      }}"
                      alt="{{ block.settings.symptom1_text }}"
                    />
                    {% else %}
                    <img
                      src="{{ 'icon-symptom1.png' | asset_url }}"
                      alt="{{ block.settings.symptom1_text }}"
                    />
                    {% endif %}
                  </div>
                  <div class="symptom-name">
                    {{ block.settings.symptom1_text }}
                  </div>
                </div>

                <!-- Síntoma 2 -->
                <div class="symptom-item">
                  <div class="symptom-icon">
                    {% if block.settings.symptom2_icon != blank %}
                    <img
                      src="{{
                        block.settings.symptom2_icon | img_url : 'master'
                      }}"
                      alt="{{ block.settings.symptom2_text }}"
                    />
                    {% else %}
                    <img
                      src="{{ 'icon-symptom2.png' | asset_url }}"
                      alt="{{ block.settings.symptom2_text }}"
                    />
                    {% endif %}
                  </div>
                  <div class="symptom-name">
                    {{ block.settings.symptom2_text }}
                  </div>
                </div>

                <!-- Síntoma 3 -->
                <div class="symptom-item">
                  <div class="symptom-icon">
                    {% if block.settings.symptom3_icon != blank %}
                    <img
                      src="{{
                        block.settings.symptom3_icon | img_url : 'master'
                      }}"
                      alt="{{ block.settings.symptom3_text }}"
                    />
                    {% else %}
                    <img
                      src="{{ 'icon-symptom3.png' | asset_url }}"
                      alt="{{ block.settings.symptom3_text }}"
                    />
                    {% endif %}
                  </div>
                  <div class="symptom-name">
                    {{ block.settings.symptom3_text }}
                  </div>
                </div>

                <!-- Síntoma 4 -->
                <div class="symptom-item">
                  <div class="symptom-icon">
                    {% if block.settings.symptom4_icon != blank %}
                    <img
                      src="{{
                        block.settings.symptom4_icon | img_url : 'master'
                      }}"
                      alt="{{ block.settings.symptom4_text }}"
                    />
                    {% else %}
                    <img
                      src="{{ 'icon-symptom4.png' | asset_url }}"
                      alt="{{ block.settings.symptom4_text }}"
                    />
                    {% endif %}
                  </div>
                  <div class="symptom-name">
                    {{ block.settings.symptom4_text }}
                  </div>
                </div>

                <!-- Síntoma 5 -->
                <div class="symptom-item">
                  <div class="symptom-icon">
                    {% if block.settings.symptom5_icon != blank %}
                    <img
                      src="{{
                        block.settings.symptom5_icon | img_url : 'master'
                      }}"
                      alt="{{ block.settings.symptom5_text }}"
                    />
                    {% else %}
                    <img
                      src="{{ 'icon-symptom5.png' | asset_url }}"
                      alt="{{ block.settings.symptom5_text }}"
                    />
                    {% endif %}
                  </div>
                  <div class="symptom-name">
                    {{ block.settings.symptom5_text }}
                  </div>
                </div>
              </div>
              {% endif %} {% if block.settings.show_divider %}
              <div class="menoplay-divider"></div>
              {% endif %}
            </div>
            {% endif %}

            <!-- Disclaimer colocado al final de todo el contenido de la pestaña -->
            {% if block.settings.show_disclaimer %}
            <div class="menoplay-disclaimer">
              {{ block.settings.disclaimer_text }}
            </div>
            {% endif %}
          </div>
        </div>
      </div>
      {% endif %} {% endfor %}

      <!-- Solo mostrar las imágenes para las pestañas que no tienen estadísticas activadas -->
      {% for block in section.blocks %} {% if block.type == 'tab' and
      block.settings.show_stats != true %}
      <div class="menoplay-image" id="image-{{ forloop.index0 }}">
        {% if block.settings.tab_image %}
        <img
          src="{{ block.settings.tab_image | img_url : 'master' }}"
          alt="{{ block.settings.image_alt | escape }}"
        />
        {% endif %}
      </div>
      {% endif %} {% endfor %}
    </div>
  </div>
</div>

<style>
  /* Estilos para el slider/carrusel */
  .menoplay-slider-container {
    display: flex;
    align-items: center;
    justify-content: center;
    margin-bottom: 30px;
    position: relative;
    width: 100%;
  }

  .menoplay-tabs-wrapper {
    max-width: 80%;
    overflow: hidden;
    margin: 0 15px;
  }

  .menoplay-tabs {
    display: flex;
    transition: transform 0.3s ease;
    justify-content: center;
    flex-wrap: nowrap;
    gap: 10px;
    width: 100%;
  }

  .menoplay-tab {
    white-space: nowrap;
    min-width: fit-content;
    padding: 12px 25px;
    border-radius: 30px;
    border: 2px solid #734999;
    background-color: transparent;
    color: #734999;
    font-weight: 600;
    cursor: pointer;
    transition: all 0.3s ease;
    margin: 0 5px;
    flex-shrink: 0;
  }

  .menoplay-tab.active {
    background-color: #734999;
    color: white;
  }

  .menoplay-arrow {
    background: none;
    border: none;
    font-size: 24px;
    cursor: pointer;
    width: 40px;
    height: 40px;
    display: flex;
    align-items: center;
    justify-content: center;
    border-radius: 50%;
    background-color: #f5f5f5;
    color: #734999;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    z-index: 2;
  }

  .menoplay-arrow:hover {
    background-color: #eaeaea;
  }

  /* Estilos para contenido y transiciones */
  .menoplay-tab-content,
  .menoplay-image {
    display: none;
    opacity: 0;
    transition: opacity 0.3s ease;
  }

  .menoplay-tab-content.active,
  .menoplay-image.active {
    display: block;
    opacity: 1;
    animation: fadeIn 0.5s ease;
  }

  @keyframes fadeIn {
    from {
      opacity: 0;
    }
    to {
      opacity: 1;
    }
  }

  /* Estilos responsive */
  @media (max-width: 768px) {
    .menoplay-tabs-wrapper {
      max-width: 70%;
    }

    .menoplay-tab {
      padding: 10px 20px;
      font-size: 14px;
    }
  }

  @media (max-width: 480px) {
    .menoplay-tabs-wrapper {
      max-width: 60%;
    }

    .menoplay-tab {
      padding: 8px 15px;
      font-size: 12px;
    }
  }
</style>

<script>
  // Variables para controlar el slider
  let currentTabIndex = 0;
  let tabsCount = 0;
  let tabsData = [];

  // Función para mostrar una pestaña específica
  function showTab(index) {
    // Ocultar todos los contenidos y desactivar todas las pestañas
    var tabs = document.querySelectorAll('.menoplay-tab');
    var contents = document.querySelectorAll('.menoplay-tab-content');
    var images = document.querySelectorAll('.menoplay-image');

    // Desactivar todas las pestañas y contenidos
    for (var i = 0; i < tabs.length; i++) {
      tabs[i].classList.remove('active');
    }

    for (var i = 0; i < contents.length; i++) {
      contents[i].classList.remove('active');
    }

    for (var i = 0; i < images.length; i++) {
      images[i].classList.remove('active');
    }

    // Activar la pestaña seleccionada
    var selectedTab = document.getElementById('tab-' + index);
    if (selectedTab) {
      selectedTab.classList.add('active');

      // Asegurar que la pestaña seleccionada sea visible en el centro del viewport
      const tabsContainer = document.querySelector('.menoplay-tabs');
      const tabWidth = selectedTab.offsetWidth;
      const containerWidth = document.querySelector('.menoplay-tabs-wrapper').offsetWidth;

      // Calcular el desplazamiento para centrar la pestaña
      const scrollPosition = selectedTab.offsetLeft - (containerWidth / 2) + (tabWidth / 2);

      // Aplicar el desplazamiento suavemente
      tabsContainer.style.transform = `translateX(-${Math.max(0, scrollPosition)}px)`;
    }

    // Activar el contenido correspondiente
    var selectedContent = document.getElementById('content-' + index);
    if (selectedContent) {
      selectedContent.classList.add('active');
    }

    // Solo activar la imagen si no tiene estadísticas activadas
    if (tabsData[index] && !tabsData[index].show_stats) {
      var selectedImage = document.getElementById('image-' + index);
      if (selectedImage) {
        selectedImage.classList.add('active');
      }
    }

    // Actualizar índice actual
    currentTabIndex = index;
  }

  // Función para ir a la pestaña anterior
  function prevTab() {
    let newIndex = currentTabIndex - 1;
    if (newIndex < 0) {
      newIndex = tabsCount - 1; // Ir al último si estamos en el primero
    }
    showTab(newIndex);
  }

  // Función para ir a la pestaña siguiente
  function nextTab() {
    let newIndex = currentTabIndex + 1;
    if (newIndex >= tabsCount) {
      newIndex = 0; // Volver al primero si estamos en el último
    }
    showTab(newIndex);
  }

  // Inicializar el carrusel cuando la página carga
  document.addEventListener('DOMContentLoaded', function() {
    // Preparar datos de bloques para JavaScript
    var sectionElement = document.getElementById('menoplay-section');
    tabsData = [];

    {% for block in section.blocks %}
      {% if block.type == 'tab' %}
        tabsData.push({
          index: {{ forloop.index0 }},
          show_stats: {% if block.settings.show_stats %}true{% else %}false{% endif %}
        });
      {% endif %}
    {% endfor %}

    tabsCount = tabsData.length;

    // Añadir eventos de teclado para navegación accesible
    document.addEventListener('keydown', function(e) {
      if (e.key === 'ArrowLeft') {
        prevTab();
      } else if (e.key === 'ArrowRight') {
        nextTab();
      }
    });

    // Activar la primera pestaña por defecto
    showTab(0);
  });

  // Opcional: añadir swipe para dispositivos móviles
  let touchStartX = 0;
  let touchEndX = 0;

  const slider = document.querySelector('.menoplay-content');
  if (slider) {
    slider.addEventListener('touchstart', e => {
      touchStartX = e.changedTouches[0].screenX;
    }, false);

    slider.addEventListener('touchend', e => {
      touchEndX = e.changedTouches[0].screenX;
      handleSwipe();
    }, false);
  }

  function handleSwipe() {
    const swipeThreshold = 50;
    if (touchEndX < touchStartX - swipeThreshold) {
      nextTab(); // Deslizar a la izquierda = siguiente
    }
    if (touchEndX > touchStartX + swipeThreshold) {
      prevTab(); // Deslizar a la derecha = anterior
    }
  }
</script>

{% schema %} { "name": "Product View Section 3", "settings": [ { "type": "text",
"id": "subtitle", "label": "Subtitle", "default": "HOW DOES" }, { "type":
"text", "id": "title", "label": "Title", "default": "Menoplay works?" } ],
"blocks": [ { "type": "tab", "name": "Tab", "settings": [ { "type": "text",
"id": "tab_title", "label": "Tab Title", "default": "Tab" }, { "type": "text",
"id": "info_title", "label": "Tab Information Title", "default": "Science You
Can Trust" }, { "type": "richtext", "id": "tab_content", "label": "Tab Content",
"default": "
<p>Description text for this tab content.</p>
" }, { "type": "text", "id": "signature", "label": "Signature (if needed)",
"default": "Signature" }, { "type": "header", "content": "Layout Options" }, {
"type": "checkbox", "id": "show_stats", "label": "Show Statistics Grid (Full
Width)", "info": "When enabled, grid takes full width and image is hidden",
"default": false }, { "type": "header", "content": "Statistics Settings" }, {
"type": "checkbox", "id": "show_intro_text", "label": "Show Introduction Text",
"default": true }, { "type": "text", "id": "intro_text", "label": "Introduction
Text", "default": "MenoPlay works because it's backed by science." }, { "type":
"checkbox", "id": "show_timeframe", "label": "Show Timeframe Text", "default":
true }, { "type": "text", "id": "timeframe_text", "label": "Timeframe Text",
"default": "Within 3 months* helps reduce" }, { "type": "header", "content":
"Statistics Grid" }, { "type": "range", "id": "stat1_percentage", "min": 0,
"max": 100, "step": 1, "default": 70, "label": "Statistic 1 Percentage" }, {
"type": "text", "id": "stat1_text", "label": "Statistic 1 Description",
"default": "Sleep issues. Wake up rested, not exhausted." }, { "type": "range",
"id": "stat2_percentage", "min": 0, "max": 100, "step": 1, "default": 86,
"label": "Statistic 2 Percentage" }, { "type": "text", "id": "stat2_text",
"label": "Statistic 2 Description", "default": "Joint & muscle pain. Move with
ease." }, { "type": "range", "id": "stat3_percentage", "min": 0, "max": 100,
"step": 1, "default": 80, "label": "Statistic 3 Percentage" }, { "type": "text",
"id": "stat3_text", "label": "Statistic 3 Description", "default": "Hot flashes
& night sweats. Stay cool, sleep better." }, { "type": "range", "id":
"stat4_percentage", "min": 0, "max": 100, "step": 1, "default": 73, "label":
"Statistic 4 Percentage" }, { "type": "text", "id": "stat4_text", "label":
"Statistic 4 Description", "default": "Mood changes. Goodbye irritability, hello
balance." }, { "type": "header", "content": "Additional Symptoms" }, { "type":
"checkbox", "id": "show_additional_text", "label": "Show Additional Text",
"default": true }, { "type": "text", "id": "additional_text", "label":
"Additional Text", "default": "MenoPlay also helps improve other major symptoms
like:" }, { "type": "checkbox", "id": "show_symptoms_grid", "label": "Show
Symptoms Grid", "default": true }, { "type": "image_picker", "id":
"symptom1_icon", "label": "Symptom 1 Icon" }, { "type": "text", "id":
"symptom1_text", "label": "Symptom 1 Text", "default": "Intimate Health Issues"
}, { "type": "image_picker", "id": "symptom2_icon", "label": "Symptom 2 Icon" },
{ "type": "text", "id": "symptom2_text", "label": "Symptom 2 Text", "default":
"Fatigue" }, { "type": "image_picker", "id": "symptom3_icon", "label": "Symptom
3 Icon" }, { "type": "text", "id": "symptom3_text", "label": "Symptom 3 Text",
"default": "Bladder Problems" }, { "type": "image_picker", "id":
"symptom4_icon", "label": "Symptom 4 Icon" }, { "type": "text", "id":
"symptom4_text", "label": "Symptom 4 Text", "default": "Irritability" }, {
"type": "image_picker", "id": "symptom5_icon", "label": "Symptom 5 Icon" }, {
"type": "text", "id": "symptom5_text", "label": "Symptom 5 Text", "default":
"Brain Fog" }, { "type": "checkbox", "id": "show_divider", "label": "Show
Divider after Statistics", "default": true }, { "type": "header", "content":
"Image Settings" }, { "type": "image_picker", "id": "tab_image", "label": "Tab
Image" }, { "type": "text", "id": "image_alt", "label": "Image Alt Text",
"default": "Product image" }, { "type": "checkbox", "id": "show_disclaimer",
"label": "Mostrar Disclaimer", "default": false }, { "type": "richtext", "id":
"disclaimer_text", "label": "Texto del Disclaimer", "default": "
<p>*Resultados pueden variar. Consulte a su médico antes de usar.</p>
" } ] } ], "presets": [ { "name": "Product View Section 3", "category": "Custom
Content" } ] } {% endschema %}
