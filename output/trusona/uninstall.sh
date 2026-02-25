#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%activation'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%userinfo_url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%login_url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%token_url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%self_service_onboarding'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%disable_wp_form'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%trusona_enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%client_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%client_secret'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%site_hash'"
wp option delete 'trusona_keys'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%subject_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%subject_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%subject_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%subject_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%paired'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%paired'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%paired'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%paired'"
