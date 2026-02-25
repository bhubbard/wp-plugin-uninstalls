-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('relario_api_key', 'relario_debug_mode', 'relario_product_id', 'relario_product_name', 'relario_sms_text_prefix', 'relario_activation_notice');

