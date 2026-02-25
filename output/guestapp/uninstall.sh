#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'guestsuite_api_key'
wp option delete 'guestsuite_cron_etat'
wp option delete 'guestsuite_debug'
wp option delete 'guestsuite_cron_frequence'
wp option delete 'guestsuite_last_import_message'
wp option delete 'guestsuite_last_import_code'
wp option delete 'import_completed'
wp option delete 'import_in_progress'
wp option delete 'guestsuite_import_state'
wp option delete 'guestsuite_import_initial_count'
wp option delete 'import_started_at'
wp option delete 'guestsuite_api_version'
wp option delete 'gs_api_key'
wp option delete 'gs_cron_etat'
wp option delete 'gs_cron_frequence'
wp option delete 'gs_debug'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gs_establishments_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gs_establishments_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gs_establishments_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gs_establishments_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gs_locationUuid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gs_locationUuid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gs_locationUuid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gs_locationUuid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gs_establishments_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gs_establishments_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gs_establishments_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gs_establishments_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gs_user_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gs_user_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gs_user_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gs_user_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gs_global_rate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gs_global_rate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gs_global_rate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gs_global_rate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gs_comment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gs_comment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gs_comment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gs_comment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gs_publication_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gs_publication_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gs_publication_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gs_publication_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gs_language_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gs_language_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gs_language_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gs_language_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gs_reviewUuid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gs_reviewUuid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gs_reviewUuid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gs_reviewUuid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gs_guestapp_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gs_guestapp_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gs_guestapp_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gs_guestapp_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gs_responses'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gs_responses'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gs_responses'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gs_responses'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gs_experience_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gs_experience_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gs_experience_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gs_experience_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gs_unique_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gs_unique_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gs_unique_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gs_unique_token'"
