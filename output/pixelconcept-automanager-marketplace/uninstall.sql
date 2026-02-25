-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pxc_amm_apikey', 'pxc_amm_url_terms', 'pxc_amm_url_privacy', 'pxc_amm_url_imprint');

