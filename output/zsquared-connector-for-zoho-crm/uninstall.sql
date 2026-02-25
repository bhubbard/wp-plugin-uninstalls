-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zsq_crm_api_key', 'zsq_crm_order_prefix', 'zsq_crm_hook_trigger', 'zsq_crm_shipping_item', 'zsq_crm_slack_channel', 'zsq_crm_slack_url', 'zsq_crm_daily_sync_price', 'zsq_crm_daily_sync_qty');
DELETE FROM wp_options WHERE option_name LIKE 'zsq_crm_ex_to_woo_tax_map_%';

