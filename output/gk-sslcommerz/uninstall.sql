-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gk_sslcommerz_db_version', 'gk_sslcommerz_info');

