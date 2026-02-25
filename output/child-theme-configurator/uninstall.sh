#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_debug'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'theme_mods_%'"
wp option delete 'allowedthemes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_configvars'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'external_updates-%'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_debug' OR option_name LIKE '_site_transient_%_debug'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_plugins_delete_result_%' OR option_name LIKE '_site_transient_plugins_delete_result_%'"

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'chld_thm_cfg_upgrade_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'chld_thm_cfg_upgrade_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'chld_thm_cfg_upgrade_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'chld_thm_cfg_upgrade_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'admin_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'admin_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'admin_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'admin_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ctc_pro_upgrade_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ctc_pro_upgrade_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ctc_pro_upgrade_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ctc_pro_upgrade_notice'"
