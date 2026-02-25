#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xyz_credit_link'
wp option delete 'twap_installed_date'
wp option delete 'xyz_twap_dnt_shw_notice'
wp option delete 'xyz_twap_credit_dismiss'
wp option delete 'xyz_twap_client_id'
wp option delete 'xyz_twap_client_secret'
wp option delete 'xyz_twap_peer_verification'
wp option delete 'xyz_twap_tw_token'
wp option delete 'xyz_twap_tw_refresh_token'
wp option delete 'xyz_twap_last_auth_time'
wp option delete 'xyz_twap_tw_af'
wp option delete 'xyz_twap_twconsumer_secret'
wp option delete 'xyz_twap_twconsumer_id'
wp option delete 'xyz_twap_tw_id'
wp option delete 'xyz_twap_current_twappln_token'
wp option delete 'xyz_twap_twpost_permission'
wp option delete 'xyz_twap_twpost_image_permission'
wp option delete 'xyz_twap_twaccestok_secret'
wp option delete 'xyz_twap_twmessage'
wp option delete 'xyz_twap_future_to_publish'
wp option delete 'xyz_twap_apply_filters'
wp option delete 'xyz_twap_free_version'
wp option delete 'xyz_twap_tw_enforce_twitter_cards'
wp option delete 'xyz_twap_include_pages'
wp option delete 'xyz_twap_include_posts'
wp option delete 'xyz_twap_include_categories'
wp option delete 'xyz_twap_include_customposttypes'
wp option delete 'xyz_twap_post_logs'
wp option delete 'xyz_twap_premium_version_ads'
wp option delete 'xyz_twap_default_selection_edit'
wp option delete 'xyz_twap_default_selection_create'
wp option delete 'xyz_twap_tw_char_limit'
wp option delete 'xyz_twap_tw_app_sel_mode'
wp option delete 'xyz_twap_smapsoln_userid'
wp option delete 'xyz_twap_smapsoln_secret_key'
wp option delete 'xyz_twap_xyzscripts_user_id'
wp option delete 'xyz_twap_xyzscripts_hash_val'
wp option delete 'xyz_smap_free_enforce_twitter_cards'
wp option delete 'xyz_smap_apply_filters'

# Clear Cron Jobs
wp cron event delete 'xyz_twap_tw_auto_reauth'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xyz_twap_future_to_publish'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xyz_twap_future_to_publish'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xyz_twap_future_to_publish'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xyz_twap_future_to_publish'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xyz_twap_insert_twitter_card'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xyz_twap_insert_twitter_card'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xyz_twap_insert_twitter_card'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xyz_twap_insert_twitter_card'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xyz_twap'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xyz_twap'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xyz_twap'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xyz_twap'"
