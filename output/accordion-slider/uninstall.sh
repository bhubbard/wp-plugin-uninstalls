#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'accordion_slider_access'
wp option delete 'accordion_slider_load_unminified_scripts'
wp option delete 'accordion_slider_add_ons'
wp option delete 'accordion_slider_is_custom_css'
wp option delete 'accordion_slider_custom_css'
wp option delete 'accordion_slider_load_stylesheets'
wp option delete 'accordion_slider_cache_expiry_interval'
wp option delete 'accordion_slider_hide_inline_info'
wp option delete 'accordion_slider_hide_getting_started_info'
wp option delete 'accordion_slider_hide_image_size_warning'
wp option delete 'accordion_slider_hide_custom_css_js_warning'
wp option delete 'accordion_slider_custom_js'
wp option delete 'accordion_slider_is_custom_js'
wp option delete 'accordion_slider_version'
wp option delete 'accordion_slider_load_custom_css_js'

# Delete Transients
wp transient delete 'accordion_slider_add_ons_cached_data'
wp transient delete 'accordion_slider_post_names'
wp transient delete 'accordion_slider_posts_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_accordion_slider_cache_%' OR option_name LIKE '_site_transient_accordion_slider_cache_%'"
wp transient delete 'accordion_slider_update_notification_message'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
