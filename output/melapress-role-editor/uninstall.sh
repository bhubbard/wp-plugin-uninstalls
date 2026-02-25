#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%role_capabilities_processed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%role_backup'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%possible_unwanted_changes_found'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%welcome_needed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%last_backup_time'"
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_role_last_edited_by'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_role_created_by'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%custom_role_descriptions'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%redirect_after_activation'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%active_version'"
wp option delete 'mre_role_post_rules'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%mu_caps_processed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%mu_caps_processed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%mu_caps_processed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%mu_caps_processed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%cap_role_add_edit_display_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%cap_role_add_edit_display_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%cap_role_add_edit_display_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%cap_role_add_edit_display_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%display_misc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%display_misc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%display_misc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%display_misc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%display_deprecated_caps'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%display_deprecated_caps'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%display_deprecated_caps'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%display_deprecated_caps'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mre_per_post_rules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mre_per_post_rules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mre_per_post_rules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mre_per_post_rules'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mre_user_post_rules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mre_user_post_rules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mre_user_post_rules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mre_user_post_rules'"
