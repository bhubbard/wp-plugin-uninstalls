#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ywcps_check_rtl'
wp option delete 'ywcps_n_posts_per_page'
wp option delete 'ywcps_categories'
wp option delete 'ywcps_product_type'
wp option delete 'ywcps_title'
wp option delete 'ywcps_image_per_row'
wp option delete 'ywcps_order_by'
wp option delete 'ywcps_order_type'
wp option delete 'ywcps_check_loop'
wp option delete 'ywcps_pagination_speed'
wp option delete 'ywcps_auto_play'
wp option delete 'ywcps_stop_hover'
wp option delete 'ywcps_show_navigation'
wp option delete 'ywcps_animate_in'
wp option delete 'ywcps_animate_out'
wp option delete 'ywcps_animation_speed'
wp option delete 'ywcps_show_dot_navigation'
wp option delete 'ywcps_show_title'
wp option delete 'yit_font_awesome_list'
wp option delete 'yit_dashicons_list'
wp option delete 'yit_plugin_fw_panel_wc_default_options_set'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_width'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_height'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp option delete 'yit_recently_activated'
wp option delete 'yith_system_info'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-yith-attachment-id'"

# Delete Transients
wp transient delete 'yith-plugin-fw-latest-hc-articles'
wp transient delete 'yith-plugin-fw-system-status-tls-version'
wp transient delete 'yith-plugin-fw-system-status-output-ip'
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ywcps_free_slider_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ywcps_free_slider_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ywcps_free_slider_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ywcps_free_slider_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blog-cats'"
