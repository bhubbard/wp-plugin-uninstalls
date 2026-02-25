<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('seur_table_version');
delete_site_option('seur_table_version');
delete_option('ownsetting');
delete_site_option('ownsetting');
delete_option('multisitesttings');
delete_site_option('multisitesttings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'seur_save_collection_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'seur_save_reference_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('seur_save_date_normal');
delete_site_option('seur_save_date_normal');
delete_option('seur_save_date_cold');
delete_site_option('seur_save_date_cold');
delete_option('seur_api_token');
delete_site_option('seur_api_token');
delete_option('seur_taric_field');
delete_site_option('seur_taric_field');
delete_option('seur_tipo_etiqueta_field');
delete_site_option('seur_tipo_etiqueta_field');
delete_option('seur_activate_local_pickup_field');
delete_site_option('seur_activate_local_pickup_field');
delete_option('seur_uploads_dir');
delete_site_option('seur_uploads_dir');
delete_option('seur_uploads_url');
delete_site_option('seur_uploads_url');
delete_option('seur_uploads_dir_labels');
delete_site_option('seur_uploads_dir_labels');
delete_option('seur_uploads_dir_manifest');
delete_site_option('seur_uploads_dir_manifest');
delete_option('seur_uploads_url_labels');
delete_site_option('seur_uploads_url_labels');
delete_option('seur_uploads_url_manifest');
delete_site_option('seur_uploads_url_manifest');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_custom_name_field' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('seur_rates_type_field');
delete_site_option('seur_rates_type_field');
delete_option('seur_nif_field');
delete_site_option('seur_nif_field');
delete_option('seur_empresa_field');
delete_site_option('seur_empresa_field');
delete_option('seur_viatipo_field');
delete_site_option('seur_viatipo_field');
delete_option('seur_vianombre_field');
delete_site_option('seur_vianombre_field');
delete_option('seur_vianumero_field');
delete_site_option('seur_vianumero_field');
delete_option('seur_escalera_field');
delete_site_option('seur_escalera_field');
delete_option('seur_piso_field');
delete_site_option('seur_piso_field');
delete_option('seur_puerta_field');
delete_site_option('seur_puerta_field');
delete_option('seur_postal_field');
delete_site_option('seur_postal_field');
delete_option('seur_poblacion_field');
delete_site_option('seur_poblacion_field');
delete_option('seur_provincia_field');
delete_site_option('seur_provincia_field');
delete_option('seur_pais_field');
delete_site_option('seur_pais_field');
delete_option('seur_telefono_field');
delete_site_option('seur_telefono_field');
delete_option('seur_email_field');
delete_site_option('seur_email_field');
delete_option('seur_contacto_nombre_field');
delete_site_option('seur_contacto_nombre_field');
delete_option('seur_contacto_apellidos_field');
delete_site_option('seur_contacto_apellidos_field');
delete_option('seur_accountNumber_field');
delete_site_option('seur_accountNumber_field');
delete_option('seur_aduana_origen_field');
delete_site_option('seur_aduana_origen_field');
delete_option('seur_aduana_destino_field');
delete_site_option('seur_aduana_destino_field');
delete_option('seur_tipo_mercancia_field');
delete_site_option('seur_tipo_mercancia_field');
delete_option('seur_id_mercancia_field');
delete_site_option('seur_id_mercancia_field');
delete_option('seur_descripcion_field');
delete_site_option('seur_descripcion_field');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'seur_uploads_dir%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'seur_uploads_url%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('seur_activate_returns_url_field');
delete_site_option('seur_activate_returns_url_field');
delete_option('seur_db_version');
delete_site_option('seur_db_version');
delete_option('seur_download_file_path');
delete_site_option('seur_download_file_path');
delete_option('seur_add_advanced_settings_field_pre');
delete_site_option('seur_add_advanced_settings_field_pre');
delete_option('seur_after_get_label_field');
delete_site_option('seur_after_get_label_field');
delete_option('seur-official-version');
delete_site_option('seur-official-version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_max_price_field' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('seur_activate_free_shipping_field');
delete_site_option('seur_activate_free_shipping_field');
delete_option('seur_google_maps_api_field');
delete_site_option('seur_google_maps_api_field');
delete_option('seur_activate_cron_update_shipments_field');
delete_site_option('seur_activate_cron_update_shipments_field');
delete_option('seur_cron_update_shipments_interval');
delete_site_option('seur_cron_update_shipments_interval');
delete_option('seur_returns_url_field');
delete_site_option('seur_returns_url_field');
delete_option('seur_test_field');
delete_site_option('seur_test_field');
delete_option('seur_log_field');
delete_site_option('seur_log_field');
delete_option('seur_rates_tax_field');
delete_site_option('seur_rates_tax_field');
delete_option('seur_client_secret_field');
delete_site_option('seur_client_secret_field');
delete_option('seur_user_field');
delete_site_option('seur_user_field');
delete_option('seur_password_field');
delete_site_option('seur_password_field');
delete_option('seur_client_id_field');
delete_site_option('seur_client_id_field');
delete_option('seur_accountnumber_field');
delete_site_option('seur_accountnumber_field');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('seur_download_file_url');
delete_site_option('seur_download_file_url');
delete_option('seur_pass_for_download');
delete_site_option('seur_pass_for_download');
delete_option('seur_cron_last_run');
delete_site_option('seur_cron_last_run');
delete_option('seur_cron_last_processed');
delete_site_option('seur_cron_last_processed');
delete_option('seur_2shop_custom_name_field');
delete_site_option('seur_2shop_custom_name_field');
delete_option('seur_classic_int_2shop_custom_name_field');
delete_site_option('seur_classic_int_2shop_custom_name_field');
delete_option('wc_seur_version');
delete_site_option('wc_seur_version');
delete_option('woocommerce_seur_settings');
delete_site_option('woocommerce_seur_settings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_seur_show_upgrade_notice');
delete_site_option('woocommerce_seur_show_upgrade_notice');
delete_option('hide-new-version-seur-notice');
delete_site_option('hide-new-version-seur-notice');
delete_option('hide-new-v2-seur-notice');
delete_site_option('hide-new-v2-seur-notice');
delete_option('seur_admin_error_notices');
delete_site_option('seur_admin_error_notices');

// Delete Transients
delete_transient('wc_attribute_taxonomies');
delete_site_transient('wc_attribute_taxonomies');
delete_transient('updateShipment_notice');
delete_site_transient('updateShipment_notice');
delete_transient('addParcels_notice');
delete_site_transient('addParcels_notice');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_seur_woo_bulk_action_pending_notice', '_site_transient_%_seur_woo_bulk_action_pending_notice' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_seur_label_bulk_download', '_site_transient_%_seur_label_bulk_download' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_seur_label_bulk_tracking', '_site_transient_%_seur_label_bulk_tracking' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_seur_label_bulk_manifest', '_site_transient_%_seur_label_bulk_manifest' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_seur_rate', '_site_transient_%_seur_rate' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_seur_label_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_seur_label_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_seur_label_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_seur_label_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_seur_shipping_id_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_seur_shipping_id_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_seur_shipping_id_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_seur_shipping_id_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_seur_shipping_method' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_seur_shipping_method' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_seur_shipping_method' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_seur_shipping_method' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_seur_shipping_weight' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_seur_shipping_weight' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_seur_shipping_weight' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_seur_shipping_weight' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_seur_shipping_packages' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_seur_shipping_packages' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_seur_shipping_packages' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_seur_shipping_packages' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_seur_shipping_product' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_seur_shipping_product' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_seur_shipping_product' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_seur_shipping_product' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_seur_shipping_service' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_seur_shipping_service' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_seur_shipping_service' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_seur_shipping_service' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_seur_shipping_ccc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_seur_shipping_ccc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_seur_shipping_ccc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_seur_shipping_ccc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_seur_shipping_order_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_seur_shipping_order_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_seur_shipping_order_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_seur_shipping_order_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_seur_shipping_order_customer_comments' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_seur_shipping_order_customer_comments' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_seur_shipping_order_customer_comments' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_seur_shipping_order_customer_comments' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_seur_shipping_order_label_file_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_seur_shipping_order_label_file_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_seur_shipping_order_label_file_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_seur_shipping_order_label_file_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_seur_shipping_order_label_path_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_seur_shipping_order_label_path_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_seur_shipping_order_label_path_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_seur_shipping_order_label_path_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_seur_label_customer_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_seur_label_customer_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_seur_label_customer_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_seur_label_customer_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_seur_tracking_last_query_ts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_seur_tracking_last_query_ts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_seur_tracking_last_query_ts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_seur_tracking_last_query_ts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_seur_tracking_fail_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_seur_tracking_fail_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_seur_tracking_fail_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_seur_tracking_fail_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_seur_shipping_tracking_state' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_seur_shipping_tracking_state' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_seur_shipping_tracking_state' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_seur_shipping_tracking_state' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_seur_shipping_tracking_state_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_seur_shipping_tracking_state_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_seur_shipping_tracking_state_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_seur_shipping_tracking_state_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_seur_shipping_manifested' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_seur_shipping_manifested' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_seur_shipping_manifested' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_seur_shipping_manifested' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_seur_cart_weight' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_seur_cart_weight' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_seur_cart_weight' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_seur_cart_weight' ) );

