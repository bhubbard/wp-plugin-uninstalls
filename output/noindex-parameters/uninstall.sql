-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('noindex_parameters_rules', 'noindex_parameters_last_updated', 'noindex_parameters_version');

