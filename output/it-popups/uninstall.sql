-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('itpopup_option_name', 'itpopup_option_body', 'csl_CustomSiteLogo_option_name');

