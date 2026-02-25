#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'acf_version'
wp option delete 'acf_pro_license'

# Delete Transients
wp transient delete 'acf_deactivated_notice_id'
wp transient delete 'update_plugins'
wp transient delete 'acf_plugin_updates'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_acf_network_upgrade_needed_%' OR option_name LIKE '_site_transient_acf_network_upgrade_needed_%'"
wp transient delete 'acf_activation_error'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acf_user_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acf_user_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acf_user_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acf_user_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rule'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rule'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rule'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rule'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'allorany'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'allorany'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'allorany'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'allorany'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hide_on_screen'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hide_on_screen'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hide_on_screen'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hide_on_screen'"
