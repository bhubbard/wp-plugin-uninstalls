-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('atcl_autosearch_enable_type');
DELETE FROM wp_options WHERE option_name LIKE '%_type_label';
DELETE FROM wp_options WHERE option_name LIKE '%_suggestion';

