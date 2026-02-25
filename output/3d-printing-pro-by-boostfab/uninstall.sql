-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('boostfab_api_token', 'boostfab_organization_slug', 'boostfab_cookie_policy', 'boostfab_primary_color', 'boostfab_sample_quotation_page_created');

