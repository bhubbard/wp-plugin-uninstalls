#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'seur_table_version'
wp option delete 'ownsetting'
wp option delete 'multisitesttings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'seur_save_collection_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'seur_save_reference_%'"
wp option delete 'seur_save_date_normal'
wp option delete 'seur_save_date_cold'
wp option delete 'seur_api_token'
wp option delete 'seur_taric_field'
wp option delete 'seur_tipo_etiqueta_field'
wp option delete 'seur_activate_local_pickup_field'
wp option delete 'seur_uploads_dir'
wp option delete 'seur_uploads_url'
wp option delete 'seur_uploads_dir_labels'
wp option delete 'seur_uploads_dir_manifest'
wp option delete 'seur_uploads_url_labels'
wp option delete 'seur_uploads_url_manifest'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_custom_name_field'"
wp option delete 'seur_rates_type_field'
wp option delete 'seur_nif_field'
wp option delete 'seur_empresa_field'
wp option delete 'seur_viatipo_field'
wp option delete 'seur_vianombre_field'
wp option delete 'seur_vianumero_field'
wp option delete 'seur_escalera_field'
wp option delete 'seur_piso_field'
wp option delete 'seur_puerta_field'
wp option delete 'seur_postal_field'
wp option delete 'seur_poblacion_field'
wp option delete 'seur_provincia_field'
wp option delete 'seur_pais_field'
wp option delete 'seur_telefono_field'
wp option delete 'seur_email_field'
wp option delete 'seur_contacto_nombre_field'
wp option delete 'seur_contacto_apellidos_field'
wp option delete 'seur_accountNumber_field'
wp option delete 'seur_aduana_origen_field'
wp option delete 'seur_aduana_destino_field'
wp option delete 'seur_tipo_mercancia_field'
wp option delete 'seur_id_mercancia_field'
wp option delete 'seur_descripcion_field'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'seur_uploads_dir%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'seur_uploads_url%'"
wp option delete 'woocommerce_weight_unit'
wp option delete 'seur_activate_returns_url_field'
wp option delete 'seur_db_version'
wp option delete 'seur_download_file_path'
wp option delete 'seur_add_advanced_settings_field_pre'
wp option delete 'seur_after_get_label_field'
wp option delete 'seur-official-version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_max_price_field'"
wp option delete 'seur_activate_free_shipping_field'
wp option delete 'seur_google_maps_api_field'
wp option delete 'seur_activate_cron_update_shipments_field'
wp option delete 'seur_cron_update_shipments_interval'
wp option delete 'seur_returns_url_field'
wp option delete 'seur_test_field'
wp option delete 'seur_log_field'
wp option delete 'seur_rates_tax_field'
wp option delete 'seur_client_secret_field'
wp option delete 'seur_user_field'
wp option delete 'seur_password_field'
wp option delete 'seur_client_id_field'
wp option delete 'seur_accountnumber_field'
wp option delete 'active_sitewide_plugins'
wp option delete 'seur_download_file_url'
wp option delete 'seur_pass_for_download'
wp option delete 'seur_cron_last_run'
wp option delete 'seur_cron_last_processed'
wp option delete 'seur_2shop_custom_name_field'
wp option delete 'seur_classic_int_2shop_custom_name_field'
wp option delete 'wc_seur_version'
wp option delete 'woocommerce_seur_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_seur_show_upgrade_notice'
wp option delete 'hide-new-version-seur-notice'
wp option delete 'hide-new-v2-seur-notice'
wp option delete 'seur_admin_error_notices'

# Delete Transients
wp transient delete 'wc_attribute_taxonomies'
wp transient delete 'updateShipment_notice'
wp transient delete 'addParcels_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_seur_woo_bulk_action_pending_notice' OR option_name LIKE '_site_transient_%_seur_woo_bulk_action_pending_notice'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_seur_label_bulk_download' OR option_name LIKE '_site_transient_%_seur_label_bulk_download'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_seur_label_bulk_tracking' OR option_name LIKE '_site_transient_%_seur_label_bulk_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_seur_label_bulk_manifest' OR option_name LIKE '_site_transient_%_seur_label_bulk_manifest'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_seur_rate' OR option_name LIKE '_site_transient_%_seur_rate'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seur_label_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seur_label_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seur_label_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seur_label_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seur_shipping_id_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seur_shipping_id_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seur_shipping_id_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seur_shipping_id_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seur_shipping_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seur_shipping_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seur_shipping_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seur_shipping_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seur_shipping_weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seur_shipping_weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seur_shipping_weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seur_shipping_weight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seur_shipping_packages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seur_shipping_packages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seur_shipping_packages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seur_shipping_packages'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seur_shipping_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seur_shipping_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seur_shipping_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seur_shipping_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seur_shipping_service'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seur_shipping_service'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seur_shipping_service'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seur_shipping_service'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seur_shipping_ccc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seur_shipping_ccc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seur_shipping_ccc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seur_shipping_ccc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seur_shipping_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seur_shipping_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seur_shipping_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seur_shipping_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seur_shipping_order_customer_comments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seur_shipping_order_customer_comments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seur_shipping_order_customer_comments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seur_shipping_order_customer_comments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seur_shipping_order_label_file_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seur_shipping_order_label_file_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seur_shipping_order_label_file_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seur_shipping_order_label_file_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seur_shipping_order_label_path_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seur_shipping_order_label_path_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seur_shipping_order_label_path_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seur_shipping_order_label_path_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seur_label_customer_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seur_label_customer_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seur_label_customer_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seur_label_customer_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seur_tracking_last_query_ts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seur_tracking_last_query_ts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seur_tracking_last_query_ts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seur_tracking_last_query_ts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seur_tracking_fail_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seur_tracking_fail_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seur_tracking_fail_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seur_tracking_fail_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seur_shipping_tracking_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seur_shipping_tracking_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seur_shipping_tracking_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seur_shipping_tracking_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seur_shipping_tracking_state_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seur_shipping_tracking_state_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seur_shipping_tracking_state_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seur_shipping_tracking_state_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seur_shipping_manifested'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seur_shipping_manifested'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seur_shipping_manifested'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seur_shipping_manifested'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seur_cart_weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seur_cart_weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seur_cart_weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seur_cart_weight'"
