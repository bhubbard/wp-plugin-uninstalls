-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zsq_inv_api_key', 'zsq_inv_order_prefix', 'zsq_inv_hook_trigger', 'zsq_inv_wh_select', 'zsq_inv_slack_channel', 'zsq_inv_slack_url', 'zsq_inv_daily_sync_price', 'zsq_inv_daily_sync_qty');
DELETE FROM wp_options WHERE option_name LIKE 'zsq_inv_ex_to_woo_tax_map_%';

