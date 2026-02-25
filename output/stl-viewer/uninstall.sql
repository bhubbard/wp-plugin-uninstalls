-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('webgl_success_msg', 'webgl_fail_msg', 'stlviewer_delete_settings');

