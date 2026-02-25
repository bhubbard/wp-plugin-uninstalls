#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'w4os_search_url'
wp option delete 'w4os_grid_name'
wp option delete 'w4os_login_uri'
wp option delete 'w4os_popular_places_max'
wp option delete 'w4os_web_search_max'
wp option delete 'w4os_offline_sender'
wp option delete 'w4os_hypevents_url'
wp option delete 'w4os_db_host'
wp option delete 'w4os_db_database'
wp option delete 'w4os_db_user'
wp option delete 'w4os_db_pass'
wp option delete 'w4os_search_db_host'
wp option delete 'w4os_search_db_database'
wp option delete 'w4os_search_db_user'
wp option delete 'w4os_search_db_pass'
wp option delete 'w4os_economy_db_host'
wp option delete 'w4os_economy_db_database'
wp option delete 'w4os_economy_db_user'
wp option delete 'w4os_economy_db_pass'
wp option delete 'w4os_money_script_access_key'
wp option delete 'w4os_currency_rate'
wp option delete 'w4os_currency_rate_per'
wp option delete 'w4os_currency_provider'
wp option delete 'w4os_podex_error_message'
wp option delete 'w4os_podex_redirect_url'
wp option delete 'w4os_provide_economy_helpers'
wp option delete 'w4os_provide_offline_messages'
wp option delete 'w4os_provide_search'
wp option delete 'w4os_search_register'
wp option delete 'w4os_profile_slug'
wp option delete 'w4os_provide_asset_server'
wp option delete 'w4os_internal_asset_server_uri'
wp option delete 'w4os_external_asset_server_uri'
wp option delete 'w4os_assets_slug'
wp option delete 'w4os_login_page'
wp option delete 'w4os_flush_rewrite_rules'
wp option delete 'w4os_economy_slug'
wp option delete 'w4os_economy_use_default_db'
wp option delete 'w4os_economy_db_type'
wp option delete 'w4os_economy_db_port'
wp option delete 'w4os_economy_helper_uri'
wp option delete 'w4os_destinations_guide_uri'
wp option delete 'w4os_helpers_slug'
wp option delete 'w4os_offline_helper_uri'
wp option delete 'w4os_search_use_robust_db'
wp option delete 'w4os_search_db_type'
wp option delete 'w4os_search_db_port'
wp option delete 'w4os_websearch_url'
wp option delete 'w4os_search_use_default_db'
wp option delete 'w4os_db_type'
wp option delete 'w4os_db_port'
wp option delete 'w4os_profile_page'
wp option delete 'w4os_configuration_instructions'
wp option delete 'w4os_userlist_replace_name'
wp option delete 'w4os_exclude_models'
wp option delete 'w4os_exclude_nomail'
wp option delete 'w4os_exclude_hypergrid'
wp option delete 'w4os_db_use_default'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'w4os_exclude_%'"
wp option delete 'w4os_updated'
wp option delete 'w4os_upated'
wp option delete 'w4os_sync_users'
wp option delete 'w4os_model_firstname'
wp option delete 'w4os_model_lastname'
wp option delete 'w4os_provide_currency'
wp option delete 'w4os_grid_info'
wp option delete 'w4os_check_urls_now'
wp option delete 'w4os_rewrite_version'
wp option delete 'avatars_can_register'

# Delete Transients
wp transient delete 'w4os_rewrite_flush'
wp transient delete 'w4os_rewrite_version'
wp transient delete 'w4os_get_url_status_checked'
wp transient delete 'w4os_get_urls_statuses_lock'
wp transient delete 'saved_user_roles'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'w4os_search_parser_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'w4os_tmp_salt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'w4os_tmp_salt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'w4os_tmp_salt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'w4os_tmp_salt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'w4os_tmp_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'w4os_tmp_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'w4os_tmp_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'w4os_tmp_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'w4os_firstname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'w4os_firstname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'w4os_firstname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'w4os_firstname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'w4os_lastname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'w4os_lastname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'w4os_lastname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'w4os_lastname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'opensim_profileAllow_web'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'opensim_profileAllow_web'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'opensim_profileAllow_web'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'opensim_profileAllow_web'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'w4os_uuid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'w4os_uuid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'w4os_uuid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'w4os_uuid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'w4os_avatarname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'w4os_avatarname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'w4os_avatarname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'w4os_avatarname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'w4os_profileimage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'w4os_profileimage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'w4os_profileimage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'w4os_profileimage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'w4os_created'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'w4os_created'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'w4os_created'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'w4os_created'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'w4os_lastseen'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'w4os_lastseen'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'w4os_lastseen'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'w4os_lastseen'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
