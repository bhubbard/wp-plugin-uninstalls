-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('royal_links_notice_broken_dismissed', 'royal_links_link_prefix', 'royal_links_enable_nofollow', 'royal_links_enable_sponsored', 'royal_links_open_new_tab', 'royal_links_default_redirect_type', 'royal_links_track_clicks', 'royal_links_track_ip', 'royal_links_enable_link_checker', 'royal_links_flush_rewrite_rules', 'royal_links_track_admin_clicks', 'royal_links_db_version', 'royal_links_uninstall_delete_data');
DELETE FROM wp_options WHERE option_name LIKE 'royal_links_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_royal_links_destination_url', '_royal_links_slug', '_royal_links_redirect_type', '_royal_links_nofollow', '_royal_links_sponsored', '_royal_links_new_tab', '_royal_links_total_clicks', '_royal_links_unique_clicks', '_royal_links_last_click', '_royal_links_is_broken', '_royal_links_last_check', '_royal_links_last_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('_royal_links_destination_url', '_royal_links_slug', '_royal_links_redirect_type', '_royal_links_nofollow', '_royal_links_sponsored', '_royal_links_new_tab', '_royal_links_total_clicks', '_royal_links_unique_clicks', '_royal_links_last_click', '_royal_links_is_broken', '_royal_links_last_check', '_royal_links_last_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('_royal_links_destination_url', '_royal_links_slug', '_royal_links_redirect_type', '_royal_links_nofollow', '_royal_links_sponsored', '_royal_links_new_tab', '_royal_links_total_clicks', '_royal_links_unique_clicks', '_royal_links_last_click', '_royal_links_is_broken', '_royal_links_last_check', '_royal_links_last_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_royal_links_destination_url', '_royal_links_slug', '_royal_links_redirect_type', '_royal_links_nofollow', '_royal_links_sponsored', '_royal_links_new_tab', '_royal_links_total_clicks', '_royal_links_unique_clicks', '_royal_links_last_click', '_royal_links_is_broken', '_royal_links_last_check', '_royal_links_last_status');

