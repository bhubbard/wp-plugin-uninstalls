-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('profitblue_cogs_tables_created', 'profitblue_cogs_period_created', 'profitblue_notifications-settings', 'profitblue-use-this-payment-period', 'profitblue-use-this-shipping-period', 'profitblue-use-this-shop-setting-period', 'profitblue_shipping_orders_buffer', 'profitblue_batch', 'profitblue_instalation_finish', 'profitblue_licence_response', 'profitblue_licence_status', 'profitblue_licence_key', 'profitblue_pnl_cache', 'profitblue_install_step', 'woocommerce_price_num_decimals', 'profitblue-notifications-settings', 'profitblue_payment_orders_buffer', 'woocommerce_email_footer_text', 'profitblue_free_check');
DELETE FROM wp_options WHERE option_name LIKE 'profitblue_daily_%';
DELETE FROM wp_options WHERE option_name LIKE 'profitblue_weekly_%';
DELETE FROM wp_options WHERE option_name LIKE 'profitblue_monthly_%';
DELETE FROM wp_options WHERE option_name LIKE 'profitblue_yearly_%';
DELETE FROM wp_options WHERE option_name LIKE '%_orders_buffer';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('profitblue_wizard_current_step', 'cogs_imported', 'thumbnail_id', 'profitblue_is_wizard_finish', '_profitblue_import');
DELETE FROM wp_usermeta WHERE meta_key IN ('profitblue_wizard_current_step', 'cogs_imported', 'thumbnail_id', 'profitblue_is_wizard_finish', '_profitblue_import');
DELETE FROM wp_termmeta WHERE meta_key IN ('profitblue_wizard_current_step', 'cogs_imported', 'thumbnail_id', 'profitblue_is_wizard_finish', '_profitblue_import');
DELETE FROM wp_commentmeta WHERE meta_key IN ('profitblue_wizard_current_step', 'cogs_imported', 'thumbnail_id', 'profitblue_is_wizard_finish', '_profitblue_import');

