-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_codeclouds_unify_settings', 'woocommerce_weight_unit', 'codeclouds_unify_pro_license', 'upgrde_request_sent', 'config_transferred_from_button', 'woocommerce_codeclouds_unify_free_trial_registation');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('unify_connection_salt', '_codeclouds_unify_order_id', 'crm_shipping_id', 'codeclouds_unify_connection', 'codeclouds_unify_shipping', 'codeclouds_unify_offer_id', 'codeclouds_unify_billing_model_id', 'codeclouds_unify_group_id', 'unify_crm_variation_prod_id', '_price', '_customer_user', 'notes', 'unify_crm_attribute_count', 'unify_connection_offer_model', 'woo_shipping_method_price', 'unify_connection_shipping_id', 'crm_shipping_price', 'unify_connection_crm', '_thumbnail_id', '_wp_attached_file', '_codeclouds_unify_shipping_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('unify_connection_salt', '_codeclouds_unify_order_id', 'crm_shipping_id', 'codeclouds_unify_connection', 'codeclouds_unify_shipping', 'codeclouds_unify_offer_id', 'codeclouds_unify_billing_model_id', 'codeclouds_unify_group_id', 'unify_crm_variation_prod_id', '_price', '_customer_user', 'notes', 'unify_crm_attribute_count', 'unify_connection_offer_model', 'woo_shipping_method_price', 'unify_connection_shipping_id', 'crm_shipping_price', 'unify_connection_crm', '_thumbnail_id', '_wp_attached_file', '_codeclouds_unify_shipping_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('unify_connection_salt', '_codeclouds_unify_order_id', 'crm_shipping_id', 'codeclouds_unify_connection', 'codeclouds_unify_shipping', 'codeclouds_unify_offer_id', 'codeclouds_unify_billing_model_id', 'codeclouds_unify_group_id', 'unify_crm_variation_prod_id', '_price', '_customer_user', 'notes', 'unify_crm_attribute_count', 'unify_connection_offer_model', 'woo_shipping_method_price', 'unify_connection_shipping_id', 'crm_shipping_price', 'unify_connection_crm', '_thumbnail_id', '_wp_attached_file', '_codeclouds_unify_shipping_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('unify_connection_salt', '_codeclouds_unify_order_id', 'crm_shipping_id', 'codeclouds_unify_connection', 'codeclouds_unify_shipping', 'codeclouds_unify_offer_id', 'codeclouds_unify_billing_model_id', 'codeclouds_unify_group_id', 'unify_crm_variation_prod_id', '_price', '_customer_user', 'notes', 'unify_crm_attribute_count', 'unify_connection_offer_model', 'woo_shipping_method_price', 'unify_connection_shipping_id', 'crm_shipping_price', 'unify_connection_crm', '_thumbnail_id', '_wp_attached_file', '_codeclouds_unify_shipping_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'unify_connection_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'unify_connection_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'unify_connection_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'unify_connection_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'codeclouds_unify_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'codeclouds_unify_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'codeclouds_unify_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'codeclouds_unify_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'unify_crm_item_option_id_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'unify_crm_item_option_id_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'unify_crm_item_option_id_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'unify_crm_item_option_id_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'unify_crm_item_option_value_id_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'unify_crm_item_option_value_id_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'unify_crm_item_option_value_id_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'unify_crm_item_option_value_id_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_salt';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_salt';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_salt';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_salt';

