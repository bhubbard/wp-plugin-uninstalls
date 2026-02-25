#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yith_wcmg_slider_direction'
wp option delete 'ywzm_hide_thumbnails'
wp option delete 'yith_wcmg_slider_style_colors'
wp option delete 'yith_wcmg_slider_style_colors_hover'
wp option delete 'yith_wcmg_slider_sizes'
wp option delete 'ywzm_lightbox_icon_colors'
wp option delete 'ywzm_lightbox_icon_size'
wp option delete 'yith_wcmg_lightbox_radius'
wp option delete 'ywzm_lightbox_icon_position'
wp option delete 'ywzm_hide_zoom_mobile'
wp option delete 'yit_font_awesome_list'
wp option delete 'yit_dashicons_list'
wp option delete 'yit_plugin_fw_panel_wc_default_options_set'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_width'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_height'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp option delete 'yit_recently_activated'
wp option delete 'yith_system_info'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-yith-attachment-id'"
wp option delete 'yith_wcmg_enableslider'
wp option delete 'yith_wcmg_slider_items'
wp option delete 'yith_wcmg_slider_infinite'
wp option delete 'yith_wcmg_slider_infinite_type'
wp option delete 'ywzm_auto_carousel'
wp option delete 'ywzm_zoom_window_sizes'
wp option delete 'yith_wcmg_zoom_position'
wp option delete 'yith_wcmg_softfocus'
wp option delete 'yith_wcmg_lens_opacity'
wp option delete 'yith_wcmg_loading_label'

# Delete Transients
wp transient delete 'yith-plugin-fw-latest-hc-articles'
wp transient delete 'yith-plugin-fw-system-status-tls-version'
wp transient delete 'yith-plugin-fw-system-status-output-ip'
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blog-cats'"
