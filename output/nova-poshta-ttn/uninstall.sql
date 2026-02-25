-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mrkvnp_sender_api_key', 'woocommerce_checkout_page_id', 'morkvanp_checkout_count', 'mrkvnp_invoice_patranomic_disable', 'mrkvnp_invoice_patranomic_required', 'nova_poshta_db_version', 'woocommerce_weight_unit', 'woocommerce_nova_poshta_shipping_method_settings', 'mrkvnp_invoice_payment_type', 'mrkvnp_invoice_sender_city_name', 'mrkvnp_invoice_sender_region_name', 'woocommerce_nova_poshta_shipping_method_area', 'woocommerce_nova_poshta_shipping_method_city', 'mrkvnp_invoice_sender_warehouse_name', 'mrkvnp_invoice_sender_warehouse_ref', 'mrkvnp_invoice_sender_warehouse_type', 'mrkvnp_invoice_sender_ref', 'mrkvnp_invoice_sender_building_number', 'mrkvnp_invoice_sender_flat_number', 'mrkvnp_checkout_spinner_color', 'np_add_city_warehouse_to_handі_order', 'region', 'city', 'mrkvnp_invoice_sender_address_name', 'woocommerce_nova_poshta_shipping_method_address', 'mrkvnp_invoice_weight', 'flat', 'invoice_weight', 'invoice_short', 'invoice_cron', 'mrkvnp_email_template', 'mrkvnp_is_show_delivery_price', 'mrkv_nova_poshta_free_version', 'mrkvnp_invoice_volume_with_packing', 'woocommerce_dimension_unit', 'text_example', 'woocommerce_nova_poshta_sender_address_type', 'woocommerce_nova_poshta_shipping_method_address_name', 'woocommerce_nova_poshta_sender_building', 'woocommerce_nova_poshta_sender_flat', 'invoice_date', 'invoice_tpay', 'invoice_cpay', 'woocommerce_email_from_address', 'mrkvnp_email_subject', 'mrkv-admin-novaposhta-settings');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('nova_poshta_region', 'np_street_name', 'billing_nova_poshta_region', 'np_region_ref', '_billing_nova_poshta_city', 'np_city_ref', '_billing_nova_poshta_warehouse', 'np_warehouse_ref', 'shipping_phone', '_billing_city', '_billing_address_1', '_shipping_city', '_shipping_address_1', 'deliveryprice', '_billing_mrkvnp_patronymics', 'np_patronymics_name', '_shipping_mrkvnp_patronymics', '_billing_mrkvnp_street', '_shipping_mrkvnp_street', '_shipping_nova_poshta_city', '_shipping_phone', 'np_shipping_phone', '_order_shipping', '_state', 'novaposhta_ttn', '_shipping_nova_poshta_region', '_billing_nova_poshta_region');
DELETE FROM wp_usermeta WHERE meta_key IN ('nova_poshta_region', 'np_street_name', 'billing_nova_poshta_region', 'np_region_ref', '_billing_nova_poshta_city', 'np_city_ref', '_billing_nova_poshta_warehouse', 'np_warehouse_ref', 'shipping_phone', '_billing_city', '_billing_address_1', '_shipping_city', '_shipping_address_1', 'deliveryprice', '_billing_mrkvnp_patronymics', 'np_patronymics_name', '_shipping_mrkvnp_patronymics', '_billing_mrkvnp_street', '_shipping_mrkvnp_street', '_shipping_nova_poshta_city', '_shipping_phone', 'np_shipping_phone', '_order_shipping', '_state', 'novaposhta_ttn', '_shipping_nova_poshta_region', '_billing_nova_poshta_region');
DELETE FROM wp_termmeta WHERE meta_key IN ('nova_poshta_region', 'np_street_name', 'billing_nova_poshta_region', 'np_region_ref', '_billing_nova_poshta_city', 'np_city_ref', '_billing_nova_poshta_warehouse', 'np_warehouse_ref', 'shipping_phone', '_billing_city', '_billing_address_1', '_shipping_city', '_shipping_address_1', 'deliveryprice', '_billing_mrkvnp_patronymics', 'np_patronymics_name', '_shipping_mrkvnp_patronymics', '_billing_mrkvnp_street', '_shipping_mrkvnp_street', '_shipping_nova_poshta_city', '_shipping_phone', 'np_shipping_phone', '_order_shipping', '_state', 'novaposhta_ttn', '_shipping_nova_poshta_region', '_billing_nova_poshta_region');
DELETE FROM wp_commentmeta WHERE meta_key IN ('nova_poshta_region', 'np_street_name', 'billing_nova_poshta_region', 'np_region_ref', '_billing_nova_poshta_city', 'np_city_ref', '_billing_nova_poshta_warehouse', 'np_warehouse_ref', 'shipping_phone', '_billing_city', '_billing_address_1', '_shipping_city', '_shipping_address_1', 'deliveryprice', '_billing_mrkvnp_patronymics', 'np_patronymics_name', '_shipping_mrkvnp_patronymics', '_billing_mrkvnp_street', '_shipping_mrkvnp_street', '_shipping_nova_poshta_city', '_shipping_phone', 'np_shipping_phone', '_order_shipping', '_state', 'novaposhta_ttn', '_shipping_nova_poshta_region', '_billing_nova_poshta_region');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_state';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_state';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_state';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_state';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_city';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_city';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_city';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_city';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_address_1';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_address_1';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_address_1';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_address_1';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_nova_poshta_region';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_nova_poshta_region';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_nova_poshta_region';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_nova_poshta_region';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_address_2';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_address_2';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_address_2';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_address_2';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_first_name';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_first_name';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_first_name';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_first_name';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_mrkvnp_patronymics';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_mrkvnp_patronymics';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_mrkvnp_patronymics';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_mrkvnp_patronymics';

