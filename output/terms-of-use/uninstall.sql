-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('terms_and_conditions_sitename', 'terms_and_conditions_version');

