-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('erbwp_rating_label', 'erbwp_submit_label', 'erbwp_header_success_message', 'erbwp_success_label', 'erbwp_header_fail_label', 'erbwp_fail_label', 'erbwp_modal_header_background_color', 'erbwp_modal_header_color', 'erbwp_enabled_for', 'erbwp_remind_rating', 'erbwp_header_remind_rating_label', 'erbwp_remind_rating_message_label', 'erbwp_send_email_notify_to_admin_when_new_rating', 'erbwp_send_email_notify_to_author_when_new_rating', 'erbwp_ratings_per_page', 'erbwp_sort_ratings_direction', 'erbwp_hold_for_review_comment_with_x_links', 'erbwp_hold_for_review_comment_with_x_links_message', 'erbwp_avatar_url_default', 'erbwp_blacklist_keyword', 'erbwp_hold_for_review_comment_with_blacklist_keyword_message', 'erbwp_header_success_label', 'erbwp_success_message', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_active_plugins', 'fs_storage_logger', 'fs_snooze_period', 'update_plugins', 'update_themes', '_fs_api_connection_retry_counter');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('average_rating');
DELETE FROM wp_usermeta WHERE meta_key IN ('average_rating');
DELETE FROM wp_termmeta WHERE meta_key IN ('average_rating');
DELETE FROM wp_commentmeta WHERE meta_key IN ('average_rating');

