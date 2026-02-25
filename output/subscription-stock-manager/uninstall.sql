-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('iter8_subscription_stock_manager_logging_enabled', 'iter8_subscription_stock_manager_global_renewal_setting');

