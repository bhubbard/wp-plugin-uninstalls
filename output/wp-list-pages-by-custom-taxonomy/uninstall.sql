-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pbytax_template_version');
DELETE FROM wp_options WHERE option_name LIKE 'pbytax_meta_keys_query_%';

