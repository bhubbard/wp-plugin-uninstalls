-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shopmetrics_for_wp', 'smr_for_wp', 'shopmetrics_for_woocommerce');

