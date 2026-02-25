-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_arrp_dradcom_source_destination');
DELETE FROM wp_options WHERE option_name LIKE 'wp_arrp_dradcom_settings_%';

