-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_publisher_host', 'wp_publisher_user', 'wp_publisher_pass', 'wp_publisher_port', 'wp_publisher_active_mode', 'wp_publisher_remote_wp_content_dir', 'wp_publisher_token', 'ftp_sync_port', 'wp_publisher_outlandish_sync_secret');

