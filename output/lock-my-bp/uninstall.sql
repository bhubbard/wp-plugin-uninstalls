-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bplock_general_settings', 'bplock-pages', 'bplock_gen_globals_copied', 'bp-components', 'custom-post-types', 'bplock-default-set', '_bplock_is_new_install');
DELETE FROM wp_options WHERE option_name LIKE 'bplock_login_attempts_%';

