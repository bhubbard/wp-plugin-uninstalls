-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zt_ens_settings');
DELETE FROM wp_options WHERE option_name LIKE 'ens_%';

