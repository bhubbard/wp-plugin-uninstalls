-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('SERP_GOOGLE_DOMAINS', 'SERP_GOOGLE_RESULTS', 'SERP_GOOGLE_PH');

