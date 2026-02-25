-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('livechat_edd_license', 'livechat_edd_email', 'livechat_edd_cartDetails', 'livechat_edd_disableMobile', 'livechat_edd_disableGuests', 'livechat_edd_review_notice_start_timestamp', 'livechat_edd_review_notice_start_timestamp_offset', 'livechat_edd_review_notice_dismissed');

