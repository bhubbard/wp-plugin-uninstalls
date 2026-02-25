-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('prayer_req_admin_email', 'prayer_admin_email_cc', 'prayer_email_from', 'prayer_email_user', 'prayer_email_req_subject', 'prayer_email_req_messages', 'prayer_email_admin_subject', 'prayer_email_admin_messages', 'upr_no_prayer_per_page', 'upr_login_not_required_request', 'upr_prayer_req_email', 'upr_prayer_send_email', 'upr_prayer_send_admin_email', 'upr_prayer_default_status_pending', 'upr_hide_prayer_button', 'upr_hide_prayer_count', 'upr_display_username_on_prayer_listing', 'upr_prayer_hide_captcha', 'upr_prayer_show_country', 'upr_allow_comments_prayer_request', 'upr_pray_prayed_button_ip', 'upr_show_prayer_category', 'upr_prayer_share', 'upr_time_interval_pray_prayed_button', 'upr_prayer_fetch_req_from', 'upr_prayer_secret', 'upr_prayer_sitekey', 'upr_prayer_thankyou', 'upr_prayer_list_title');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('prayers_name', 'prayers_email', 'prayers_country', 'prayers_website', 'prayers_count', 'prayer_id', 'user_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('prayers_name', 'prayers_email', 'prayers_country', 'prayers_website', 'prayers_count', 'prayer_id', 'user_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('prayers_name', 'prayers_email', 'prayers_country', 'prayers_website', 'prayers_count', 'prayer_id', 'user_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('prayers_name', 'prayers_email', 'prayers_country', 'prayers_website', 'prayers_count', 'prayer_id', 'user_id');

