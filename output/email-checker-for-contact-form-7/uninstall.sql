-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kprj_allowed_email_types', 'kprj_access_key_status', 'kprj_access_key_status_color', 'kprj_access_key');

