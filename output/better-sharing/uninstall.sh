#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aw_referrals_referrals_page'
wp option delete '_bswp_option_core_apiKey'
wp option delete 'mwb_cpr_social_enable'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'wc_wishlists_page_id_my-lists'
wp option delete '_bswp_option_email_template_notifications'
wp option delete '_bswp_option_ui_template_notifications'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bswp_email_subject'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bswp_email_subject'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bswp_email_subject'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bswp_email_subject'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'referral_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'referral_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'referral_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'referral_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bswp_ui_template_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bswp_ui_template_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bswp_ui_template_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bswp_ui_template_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ign_project_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ign_project_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ign_project_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ign_project_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ign_project_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ign_project_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ign_project_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ign_project_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wishlist_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wishlist_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wishlist_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wishlist_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wishlist_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wishlist_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wishlist_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wishlist_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bswp_demo_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bswp_demo_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bswp_demo_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bswp_demo_page'"
