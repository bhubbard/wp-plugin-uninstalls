-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rn_ssp_public_key', 'rn_ssp_secret_key', 'rn_ssp_currency', 'rn_ssp_name', 'rn_ssp_price', 'rn_ssp_success_url', 'rn_ssp_cancel_url');

