#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'grid_accordion_access'
wp option delete 'grid_accordion_load_unminified_scripts'
wp option delete 'grid_accordion_add_ons'
wp option delete 'grid_accordion_is_custom_css'
wp option delete 'grid_accordion_custom_css'
wp option delete 'grid_accordion_load_stylesheets'
wp option delete 'grid_accordion_cache_expiry_interval'
wp option delete 'grid_accordion_hide_inline_info'
wp option delete 'grid_accordion_hide_getting_started_info'
wp option delete 'grid_accordion_hide_custom_css_js_warning'
wp option delete 'grid_accordion_custom_js'
wp option delete 'grid_accordion_is_custom_js'
wp option delete 'grid_accordion_version'
wp option delete 'grid_accordion_load_custom_css_js'
wp option delete 'grid_accordion_hide_image_size_warning'

# Delete Transients
wp transient delete 'grid_accordion_add_ons_cached_data'
wp transient delete 'grid_accordion_post_names'
wp transient delete 'grid_accordion_posts_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_grid_accordion_cache_%' OR option_name LIKE '_site_transient_grid_accordion_cache_%'"
wp transient delete 'grid_accordion_update_notification_message'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
