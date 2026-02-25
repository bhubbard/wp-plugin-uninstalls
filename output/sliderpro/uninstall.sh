#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sliderpro_access'
wp option delete 'sliderpro_load_unminified_scripts'
wp option delete 'sliderpro_add_ons'
wp option delete 'sliderpro_is_custom_css'
wp option delete 'sliderpro_custom_css'
wp option delete 'sliderpro_load_stylesheets'
wp option delete 'sliderpro_load_js_in_all_pages'
wp option delete 'sliderpro_cache_expiry_interval'
wp option delete 'sliderpro_max_sliders_on_page'
wp option delete 'sliderpro_hide_inline_info'
wp option delete 'sliderpro_hide_getting_started_info'
wp option delete 'sliderpro_hide_image_size_warning'
wp option delete 'sliderpro_lightbox_sliders'
wp option delete 'sliderpro_setting_presets'
wp option delete 'sliderpro_hide_custom_css_js_warning'
wp option delete 'sliderpro_custom_js'
wp option delete 'sliderpro_is_custom_js'
wp option delete 'sliderpro_version'
wp option delete 'sliderpro_load_custom_css_js'

# Delete Transients
wp transient delete 'sliderpro_add_ons_cached_data'
wp transient delete 'sliderpro_post_names'
wp transient delete 'sliderpro_posts_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sliderpro_cache_%' OR option_name LIKE '_site_transient_sliderpro_cache_%'"
wp transient delete 'sliderpro_update_notification_message'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
