-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kdbm_pbfl_settings', 'kdbm_pbfl_admin_email', 'kdbm_pbfl_unlock_email');

