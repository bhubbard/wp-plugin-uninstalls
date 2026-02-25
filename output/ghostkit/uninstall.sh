#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_state'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_time'"
wp option delete 'ghostkit_google_recaptcha_api_site_key'
wp option delete 'ghostkit_google_recaptcha_api_secret_key'
wp option delete 'ghostkit_settings'
wp option delete 'ghostkit_disabled_blocks'
wp option delete 'ghostkit_google_maps_api_key'
wp option delete 'ghostkit_custom_code'
wp option delete 'active_sitewide_plugins'
wp option delete 'ghostkit_typography'
wp option delete 'vpf_db_version'
wp option delete 'ghostkit_fonts_settings'
wp option delete 'ghostkit_customizer_fields'
wp option delete 'ghostkit_color_palette'

# Delete Transients
wp transient delete 'gkt_deactivated_notice_id'
wp transient delete 'ghostkit_google_fonts_list'
wp transient delete 'ghostkit_remote_templates'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ghostkit_custom_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ghostkit_custom_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ghostkit_custom_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ghostkit_custom_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ghostkit_custom_js_head'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ghostkit_custom_js_head'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ghostkit_custom_js_head'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ghostkit_custom_js_head'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ghostkit_custom_js_foot'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ghostkit_custom_js_foot'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ghostkit_custom_js_foot'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ghostkit_custom_js_foot'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ghostkit_typography'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ghostkit_typography'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ghostkit_typography'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ghostkit_typography'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ghostkit_customizer_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ghostkit_customizer_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ghostkit_customizer_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ghostkit_customizer_options'"
