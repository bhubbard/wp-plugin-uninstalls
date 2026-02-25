-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('easywp_adminview', 'easywp_pages_add_delete', 'easy-wp-current-button', 'easy-wp-current-title', 'easy-wp-current-backlink', 'wp-analytics-login-email', 'wp-analytics-login-password', 'wp-analytics-profile', 'easywp_admin_godbutton');
DELETE FROM wp_options WHERE option_name LIKE '%-posttype';
DELETE FROM wp_options WHERE option_name LIKE '%-name';

