-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('timify_settings', 'timify_reading_settings', 'timify_word_settings', 'timify_view_settings', 'timify_admin_notice_info', 'track_transient', 'has_transient');
DELETE FROM wp_options WHERE option_name LIKE 'timify_admin_notice_time_%';

