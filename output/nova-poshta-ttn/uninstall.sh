#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mrkvnp_sender_api_key'
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'morkvanp_checkout_count'
wp option delete 'mrkvnp_invoice_patranomic_disable'
wp option delete 'mrkvnp_invoice_patranomic_required'
wp option delete 'nova_poshta_db_version'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_nova_poshta_shipping_method_settings'
wp option delete 'mrkvnp_invoice_payment_type'
wp option delete 'mrkvnp_invoice_sender_city_name'
wp option delete 'mrkvnp_invoice_sender_region_name'
wp option delete 'woocommerce_nova_poshta_shipping_method_area'
wp option delete 'woocommerce_nova_poshta_shipping_method_city'
wp option delete 'mrkvnp_invoice_sender_warehouse_name'
wp option delete 'mrkvnp_invoice_sender_warehouse_ref'
wp option delete 'mrkvnp_invoice_sender_warehouse_type'
wp option delete 'mrkvnp_invoice_sender_ref'
wp option delete 'mrkvnp_invoice_sender_building_number'
wp option delete 'mrkvnp_invoice_sender_flat_number'
wp option delete 'mrkvnp_checkout_spinner_color'
wp option delete 'np_add_city_warehouse_to_handі_order'
wp option delete 'region'
wp option delete 'city'
wp option delete 'mrkvnp_invoice_sender_address_name'
wp option delete 'woocommerce_nova_poshta_shipping_method_address'
wp option delete 'mrkvnp_invoice_weight'
wp option delete 'flat'
wp option delete 'invoice_weight'
wp option delete 'invoice_short'
wp option delete 'invoice_cron'
wp option delete 'mrkvnp_email_template'
wp option delete 'mrkvnp_is_show_delivery_price'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'mrkv_nova_poshta_free_version'
wp option delete 'mrkvnp_invoice_volume_with_packing'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'text_example'
wp option delete 'woocommerce_nova_poshta_sender_address_type'
wp option delete 'woocommerce_nova_poshta_shipping_method_address_name'
wp option delete 'woocommerce_nova_poshta_sender_building'
wp option delete 'woocommerce_nova_poshta_sender_flat'
wp option delete 'invoice_date'
wp option delete 'invoice_tpay'
wp option delete 'invoice_cpay'
wp option delete 'woocommerce_email_from_address'
wp option delete 'mrkvnp_email_subject'

# Delete Transients
wp transient delete 'mrkv-admin-novaposhta-settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nova_poshta_region'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nova_poshta_region'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nova_poshta_region'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nova_poshta_region'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'np_street_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'np_street_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'np_street_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'np_street_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_nova_poshta_region'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_nova_poshta_region'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_nova_poshta_region'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_nova_poshta_region'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'np_region_ref'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'np_region_ref'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'np_region_ref'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'np_region_ref'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_nova_poshta_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_nova_poshta_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_nova_poshta_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_nova_poshta_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'np_city_ref'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'np_city_ref'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'np_city_ref'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'np_city_ref'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_nova_poshta_warehouse'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_nova_poshta_warehouse'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_nova_poshta_warehouse'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_nova_poshta_warehouse'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'np_warehouse_ref'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'np_warehouse_ref'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'np_warehouse_ref'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'np_warehouse_ref'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'deliveryprice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'deliveryprice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'deliveryprice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'deliveryprice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_mrkvnp_patronymics'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_mrkvnp_patronymics'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_mrkvnp_patronymics'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_mrkvnp_patronymics'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'np_patronymics_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'np_patronymics_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'np_patronymics_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'np_patronymics_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_mrkvnp_patronymics'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_mrkvnp_patronymics'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_mrkvnp_patronymics'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_mrkvnp_patronymics'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_mrkvnp_street'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_mrkvnp_street'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_mrkvnp_street'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_mrkvnp_street'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_mrkvnp_street'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_mrkvnp_street'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_mrkvnp_street'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_mrkvnp_street'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_nova_poshta_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_nova_poshta_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_nova_poshta_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_nova_poshta_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'np_shipping_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'np_shipping_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'np_shipping_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'np_shipping_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_shipping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_nova_poshta_region'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_nova_poshta_region'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_nova_poshta_region'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_nova_poshta_region'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_mrkvnp_patronymics'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_mrkvnp_patronymics'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_mrkvnp_patronymics'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_mrkvnp_patronymics'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'novaposhta_ttn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'novaposhta_ttn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'novaposhta_ttn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'novaposhta_ttn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_nova_poshta_region'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_nova_poshta_region'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_nova_poshta_region'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_nova_poshta_region'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_nova_poshta_region'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_nova_poshta_region'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_nova_poshta_region'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_nova_poshta_region'"
