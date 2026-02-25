-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('line_wp_setting_options_name', 'line_wp_rated', 'line-wp-error-send-to-line-image', 'line-wp-error-send-to-line', 'line-wp-success-send-to-line');
DELETE FROM wp_options WHERE option_name LIKE '%channel_access_token';
DELETE FROM wp_options WHERE option_name LIKE '%channel_secret';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_line_wp_last_send_date', '_line_wp_send_text');
DELETE FROM wp_usermeta WHERE meta_key IN ('_line_wp_last_send_date', '_line_wp_send_text');
DELETE FROM wp_termmeta WHERE meta_key IN ('_line_wp_last_send_date', '_line_wp_send_text');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_line_wp_last_send_date', '_line_wp_send_text');

