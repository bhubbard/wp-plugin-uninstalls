-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('srel_settings_page_options', 'srel_db_version', 'SREL_MORTGAGE_CALCULATOR_INSTALLED', 'SREL_MORTGAGE_CALCULATOR_VERSION');

