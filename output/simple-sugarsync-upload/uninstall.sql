-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_ssync_allow_ext', 'wp_ssync_username', 'wp_ssync_password', 'wp_ssync_key', 'wp_ssync_secret', 'wp_ssync_show_form', 'wp_ssync_delete_file', 'wp_ssync_thank_message', 'wp_ssync_path', 'wp_ssync_temp_path', 'wp_ssync_menu_pref', 'wp_ssync_version_number');

