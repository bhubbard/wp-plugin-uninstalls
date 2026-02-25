-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('postmark_settings', 'postmark_enabled', 'postmark_api_key', 'postmark_stream_name', 'postmark_sender_address', 'postmark_force_from', 'postmark_force_html', 'postmark_trackopens', 'postmark_tracklinks', 'postmark_enable_logs');

