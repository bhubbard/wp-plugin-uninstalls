-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'cwep_total_time_minutes', 'connv_abandoned_cart_template_name', 'connv_abandoned_cart_variables', 'cwep_access_token', 'cwep_templates', 'connverz_show_product_whatsapp_button', 'cwep_whatsapp_button_message_product', 'cwep_whatsapp_button_message_general', 'connv_new_order_template_name', 'connv_new_order_variables', 'connv_delivered_order_template_name', 'connv_delivered_order_variables', 'connv_canceled_order_template_name', 'connv_canceled_order_variables');
DELETE FROM wp_options WHERE option_name LIKE '%_template_name';
DELETE FROM wp_options WHERE option_name LIKE '%_variables';
DELETE FROM wp_options WHERE option_name LIKE 'connverz_cart_activity_%';
DELETE FROM wp_options WHERE option_name LIKE 'connverz_abandoned_cart_notification_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_billing_whatsapp_optin', 'connverz_active_tab');
DELETE FROM wp_usermeta WHERE meta_key IN ('_billing_whatsapp_optin', 'connverz_active_tab');
DELETE FROM wp_termmeta WHERE meta_key IN ('_billing_whatsapp_optin', 'connverz_active_tab');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_billing_whatsapp_optin', 'connverz_active_tab');

