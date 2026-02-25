#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dam_spam_options'
wp option delete 'dam_spam_stats'
wp option delete 'dam_spam_require_activation'
wp option delete 'dam_spam_muswitch'
wp option delete 'dam_spam_enable_custom_login'
wp option delete 'dam_spam_manual_bans'
wp option delete 'dam_spam_automatic_bans'
wp option delete 'ss_stop_sp_reg_options'
wp option delete 'ss_stop_sp_reg_stats'
wp option delete 'dam_spam_migrated_from_ss'
wp option delete 'dam_spam_migrated_from_ds'
wp option delete 'wordpredam_spam_api_key'
wp option delete 'dam_spam_enable_firewall'
wp option delete 'dam_spam_login_attempts'
wp option delete 'dam_spam_login_type'
wp option delete 'dam_spam_honeypot_cf7'
wp option delete 'dam_spam_honeypot_bbpress'
wp option delete 'dam_spam_honeypot_elementor'
wp option delete 'dam_spam_honeypot_divi'
wp option delete 'dam_spam_login_attempts_threshold'
wp option delete 'dam_spam_login_attempts_duration'
wp option delete 'dam_spam_activation_auto_delete'
wp option delete 'dam_spam_login_attempts_unit'
wp option delete 'dam_spam_login_attempts_by_ip'
wp option delete 'dam_spam_cache'

# Clear Cron Jobs
wp cron event delete 'dam_spam_cleanup_unverified'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dam_spam_notice_dismissed_2026_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dam_spam_notice_dismissed_2026_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dam_spam_notice_dismissed_2026_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dam_spam_notice_dismissed_2026_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dam_spam_wc_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dam_spam_wc_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dam_spam_wc_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dam_spam_wc_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'signup_ip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'signup_ip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'signup_ip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'signup_ip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dam_spam_activation_pending'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dam_spam_activation_pending'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dam_spam_activation_pending'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dam_spam_activation_pending'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dam_spam_activation_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dam_spam_activation_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dam_spam_activation_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dam_spam_activation_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dam_spam_activation_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dam_spam_activation_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dam_spam_activation_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dam_spam_activation_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_IUD_userBlockedTime'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_IUD_userBlockedTime'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_IUD_userBlockedTime'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_IUD_userBlockedTime'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dam_spam_is_locked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dam_spam_is_locked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dam_spam_is_locked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dam_spam_is_locked'"
