#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gdpr_hide_update_notice_%'"
wp option delete 'gdpr_cc_has_database'
wp option delete 'gdpr_cc_db_created'

# Delete Transients
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_plugin_info_%' OR option_name LIKE '_site_transient_plugin_info_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gdpr_cc_dismiss_stamp_p'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gdpr_cc_dismiss_stamp_p'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gdpr_cc_dismiss_stamp_p'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gdpr_cc_dismiss_stamp_p'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gdpr_cc_dismiss_stamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gdpr_cc_dismiss_stamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gdpr_cc_dismiss_stamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gdpr_cc_dismiss_stamp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'gdpr_cc_dismiss_stamp%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'gdpr_cc_dismiss_stamp%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'gdpr_cc_dismiss_stamp%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'gdpr_cc_dismiss_stamp%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
