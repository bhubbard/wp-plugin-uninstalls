#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%admin_ad_mode'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%help_toggle'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%pro_demo'"
wp option delete 'maa_settings'
wp option delete 'multiauthoradsense_license_key'
wp option delete 'multiauthoradsense_license_status'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%admin_id'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maa_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maa_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maa_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maa_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maa_disable_display'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maa_disable_display'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maa_disable_display'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maa_disable_display'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maa_disable_auto_insert'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maa_disable_auto_insert'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maa_disable_auto_insert'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maa_disable_auto_insert'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maa_settings_backup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maa_settings_backup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maa_settings_backup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maa_settings_backup'"
