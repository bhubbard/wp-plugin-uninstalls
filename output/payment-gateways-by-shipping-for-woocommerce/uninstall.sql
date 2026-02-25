-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('alg_wc_pgbsm_use_shipping_instance', 'alg_wc_pgbsm_reset_payment_method_on_totals', 'alg_wc_pgbsm_version', 'active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_reset';

