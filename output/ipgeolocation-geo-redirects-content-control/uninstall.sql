-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ipgeo_setup', 'ipgeo_country_rules', 'ipgeo_page_exclusions', 'ipgeo_country_access');

