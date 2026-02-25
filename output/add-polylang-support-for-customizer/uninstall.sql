-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('polylang', 'apsfc_force_lang', 'pll_languages_list');

