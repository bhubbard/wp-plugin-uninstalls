-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('perfect_portal_company_guid', 'perfect_portal_region', 'perfect_portal_quote_calc_intake_type', 'perfect_portal_quote_calc_intake_guid', 'perfect_portal_version');

