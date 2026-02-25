#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'benrueeg_rue_opt_wordpress_core_version'
wp option delete 'BENrueeg_RUE_settings'
wp option delete 'registration'
wp option delete 'active_sitewide_plugins'
wp option delete 'BENrueeg_RUE_settings_Tw'
wp option delete 'restrict_usernames_emails_characters_ver_base'
wp option delete 'benrueeg_rue_wordpress_core_nace'
wp option delete 'benrueeg_nicename_msg_only_store_all_ids'
wp option delete 'benrueeg_nicename_store_all_users_id'
wp option delete 'benrueeg_n_store_all_completed_ids'
wp option delete 'benrueeg_rue_1_7____notice'
wp option delete 'benrueeg_nicename_error_store_all_users_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'benrueeg_rue_mgs_remove_file_update_db'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'benrueeg_rue_mgs_remove_file_update_db'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'benrueeg_rue_mgs_remove_file_update_db'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'benrueeg_rue_mgs_remove_file_update_db'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'benrueeg_rue_mgs_selectedLanguage_empty'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'benrueeg_rue_mgs_selectedLanguage_empty'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'benrueeg_rue_mgs_selectedLanguage_empty'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'benrueeg_rue_mgs_selectedLanguage_empty'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'benrueeg_rue_mgs_selectedLanguage_invalid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'benrueeg_rue_mgs_selectedLanguage_invalid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'benrueeg_rue_mgs_selectedLanguage_invalid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'benrueeg_rue_mgs_selectedLanguage_invalid'"
