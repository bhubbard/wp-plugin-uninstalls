-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('WC_PAYBOX_PLUGIN.'_version'');
DELETE FROM wp_options WHERE option_name LIKE '%_version';

