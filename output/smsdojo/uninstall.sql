-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smsdojo_enable_order_creation_trigger', 'smsdojo_enable_order_update_trigger', 'smsdojo_enable_order_cancellation_trigger', 'smsdojo_sim_id', 'smsdojo_api_key', 'smsdojo_sms_template_order_creation', 'smsdojo_sms_template_order_update', 'smsdojo_sms_template_order_cancellation');

