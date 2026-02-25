-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active-{%plugin%}-barcodes-version', 'alg_wc_ean_title', 'wpm_pgw_label', 'active_sitewide_plugins');

