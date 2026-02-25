-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpst_country_selected', 'wpst_suggestions_limit', 'wpst_sortfield', 'wpst_sorttype', 'wpst_api_key', 'wpst_countries');

