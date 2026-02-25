-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pinf_zverejnit_uid', 'pinf_zverejnit_secret');

