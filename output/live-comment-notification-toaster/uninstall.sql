-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('toast_post_types', 'toast_enable', 'default_toast_time', 'toast_auth_visible', 'toast_new_tab');

