-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_falbar_bbf_options_params', '_falbar_bbf_options_name');
DELETE FROM wp_options WHERE option_name LIKE '%_options_params';
DELETE FROM wp_options WHERE option_name LIKE '%_options_name';

