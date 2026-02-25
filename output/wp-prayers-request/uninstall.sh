#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'prayer_req_admin_email'
wp option delete 'prayer_admin_email_cc'
wp option delete 'prayer_email_from'
wp option delete 'prayer_email_user'
wp option delete 'prayer_email_req_subject'
wp option delete 'prayer_email_req_messages'
wp option delete 'prayer_email_admin_subject'
wp option delete 'prayer_email_admin_messages'
wp option delete 'upr_no_prayer_per_page'
wp option delete 'upr_login_not_required_request'
wp option delete 'upr_prayer_req_email'
wp option delete 'upr_prayer_send_email'
wp option delete 'upr_prayer_send_admin_email'
wp option delete 'upr_prayer_default_status_pending'
wp option delete 'upr_hide_prayer_button'
wp option delete 'upr_hide_prayer_count'
wp option delete 'upr_display_username_on_prayer_listing'
wp option delete 'upr_prayer_hide_captcha'
wp option delete 'upr_prayer_show_country'
wp option delete 'upr_allow_comments_prayer_request'
wp option delete 'upr_pray_prayed_button_ip'
wp option delete 'upr_show_prayer_category'
wp option delete 'upr_prayer_share'
wp option delete 'upr_time_interval_pray_prayed_button'
wp option delete 'upr_prayer_fetch_req_from'
wp option delete 'upr_prayer_secret'
wp option delete 'upr_prayer_sitekey'
wp option delete 'upr_prayer_thankyou'
wp option delete 'upr_prayer_list_title'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'prayers_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'prayers_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'prayers_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'prayers_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'prayers_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'prayers_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'prayers_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'prayers_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'prayers_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'prayers_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'prayers_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'prayers_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'prayers_website'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'prayers_website'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'prayers_website'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'prayers_website'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'prayers_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'prayers_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'prayers_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'prayers_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'prayer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'prayer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'prayer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'prayer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_id'"
