#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lingotek_token'
wp option delete 'lingotek_community'
wp option delete 'lingotek_prefs'
wp option delete 'lingotek_defaults'
wp option delete 'lingotek_base_url'
wp option delete 'lingotek_community_resources'
wp option delete 'lingotek_content_type'
wp option delete 'lingotek_log_errors'
wp option delete 'disassociate_source_failed'
wp option delete 'disassociate_target_failed'
wp option delete 'cancel_source_failed'
wp option delete 'cancel_target_failed'
wp option delete 'ignore_delete_pref'
wp option delete 'lingotek_import_prefs'
wp option delete 'lingotek_profiles'
wp option delete 'lingotek_custom_fields'
wp option delete 'lingotek_default_custom_fields'
wp option delete 'lingotek_professional_promotion_shown'
wp option delete 'lingotek_plugin_version'
wp option delete 'rewrite_rules'

# Delete Transients
wp transient delete 'settings_errors'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'manageedit-postcolumnshidden'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'manageedit-postcolumnshidden'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'manageedit-postcolumnshidden'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'manageedit-postcolumnshidden'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'manageedit-pagecolumnshidden'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'manageedit-pagecolumnshidden'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'manageedit-pagecolumnshidden'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'manageedit-pagecolumnshidden'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pll_filter_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pll_filter_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pll_filter_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pll_filter_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
