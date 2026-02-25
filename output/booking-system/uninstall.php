<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('DOPBSP_db_version_woocommerce');
delete_site_option('DOPBSP_db_version_woocommerce');
delete_option('DOPBSP_view_pro');
delete_site_option('DOPBSP_view_pro');
delete_option('DOPBSP_db_version');
delete_site_option('DOPBSP_db_version');
delete_option('DOPBSP_db_version_api_keys');
delete_site_option('DOPBSP_db_version_api_keys');
delete_option('DOPBSP_db_version_availability');
delete_site_option('DOPBSP_db_version_availability');
delete_option('DOPBSP_db_version_availability_no');
delete_site_option('DOPBSP_db_version_availability_no');
delete_option('DOPBSP_db_version_availability_price');
delete_site_option('DOPBSP_db_version_availability_price');
delete_option('DOPBSP_db_version_calendars');
delete_site_option('DOPBSP_db_version_calendars');
delete_option('DOPBSP_db_version_coupons');
delete_site_option('DOPBSP_db_version_coupons');
delete_option('DOPBSP_db_version_days');
delete_site_option('DOPBSP_db_version_days');
delete_option('DOPBSP_db_version_days_available');
delete_site_option('DOPBSP_db_version_days_available');
delete_option('DOPBSP_db_version_days_unavailable');
delete_site_option('DOPBSP_db_version_days_unavailable');
delete_option('DOPBSP_db_version_discounts');
delete_site_option('DOPBSP_db_version_discounts');
delete_option('DOPBSP_db_version_discounts_items');
delete_site_option('DOPBSP_db_version_discounts_items');
delete_option('DOPBSP_db_version_discounts_items_rules');
delete_site_option('DOPBSP_db_version_discounts_items_rules');
delete_option('DOPBSP_db_version_emails');
delete_site_option('DOPBSP_db_version_emails');
delete_option('DOPBSP_db_version_emails_translation');
delete_site_option('DOPBSP_db_version_emails_translation');
delete_option('DOPBSP_db_version_extras');
delete_site_option('DOPBSP_db_version_extras');
delete_option('DOPBSP_db_version_extras_groups');
delete_site_option('DOPBSP_db_version_extras_groups');
delete_option('DOPBSP_db_version_extras_groups_items');
delete_site_option('DOPBSP_db_version_extras_groups_items');
delete_option('DOPBSP_db_version_fees');
delete_site_option('DOPBSP_db_version_fees');
delete_option('DOPBSP_db_version_forms');
delete_site_option('DOPBSP_db_version_forms');
delete_option('DOPBSP_db_version_forms_fields');
delete_site_option('DOPBSP_db_version_forms_fields');
delete_option('DOPBSP_db_version_forms_select_options');
delete_site_option('DOPBSP_db_version_forms_select_options');
delete_option('DOPBSP_db_version_languages');
delete_site_option('DOPBSP_db_version_languages');
delete_option('DOPBSP_db_version_locations');
delete_site_option('DOPBSP_db_version_locations');
delete_option('DOPBSP_db_version_reservations');
delete_site_option('DOPBSP_db_version_reservations');
delete_option('DOPBSP_db_version_rules');
delete_site_option('DOPBSP_db_version_rules');
delete_option('DOPBSP_db_version_searches');
delete_site_option('DOPBSP_db_version_searches');
delete_option('DOPBSP_db_version_settings');
delete_site_option('DOPBSP_db_version_settings');
delete_option('DOPBSP_db_version_settings_calendar');
delete_site_option('DOPBSP_db_version_settings_calendar');
delete_option('DOPBSP_db_version_settings_notifications');
delete_site_option('DOPBSP_db_version_settings_notifications');
delete_option('DOPBSP_db_version_settings_payment');
delete_site_option('DOPBSP_db_version_settings_payment');
delete_option('DOPBSP_db_version_settings_search');
delete_site_option('DOPBSP_db_version_settings_search');
delete_option('DOPBSP_db_version_smses');
delete_site_option('DOPBSP_db_version_smses');
delete_option('DOPBSP_db_version_smses_translation');
delete_site_option('DOPBSP_db_version_smses_translation');
delete_option('DOPBSP_db_version_translation');
delete_site_option('DOPBSP_db_version_translation');
delete_option('DOPBSP_request_rating');
delete_site_option('DOPBSP_request_rating');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'DOPBSP_users_permissions_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'DOPBSP_users_permissions_custom_posts_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_version_database' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_languages' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_cart_redirect_after_add');
delete_site_option('woocommerce_cart_redirect_after_add');
delete_option('DOPBSP_db_version_models');
delete_site_option('DOPBSP_db_version_models');
delete_option('DOPBSP_users_permissions_administrator');
delete_site_option('DOPBSP_users_permissions_administrator');
delete_option('DOPBSP_users_permissions_custom_posts_administrator');
delete_site_option('DOPBSP_users_permissions_custom_posts_administrator');
delete_option('DOPBSP_users_permissions_author');
delete_site_option('DOPBSP_users_permissions_author');
delete_option('DOPBSP_users_permissions_custom_posts_author');
delete_site_option('DOPBSP_users_permissions_custom_posts_author');
delete_option('DOPBSP_users_permissions_contributor');
delete_site_option('DOPBSP_users_permissions_contributor');
delete_option('DOPBSP_users_permissions_custom_posts_contributor');
delete_site_option('DOPBSP_users_permissions_custom_posts_contributor');
delete_option('DOPBSP_users_permissions_editor');
delete_site_option('DOPBSP_users_permissions_editor');
delete_option('DOPBSP_users_permissions_custom_posts_editor');
delete_site_option('DOPBSP_users_permissions_custom_posts_editor');
delete_option('DOPBSP_users_permissions_subscriber');
delete_site_option('DOPBSP_users_permissions_subscriber');
delete_option('DOPBSP_users_permissions_custom_posts_subscriber');
delete_site_option('DOPBSP_users_permissions_custom_posts_subscriber');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dopbsp_woocommerce_calendar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dopbsp_woocommerce_calendar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dopbsp_woocommerce_calendar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dopbsp_woocommerce_calendar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dopbsp_woocommerce_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dopbsp_woocommerce_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dopbsp_woocommerce_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dopbsp_woocommerce_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dopbsp_woocommerce_position' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dopbsp_woocommerce_position' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dopbsp_woocommerce_position' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dopbsp_woocommerce_position' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dopbsp_woocommerce_add_to_cart' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dopbsp_woocommerce_add_to_cart' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dopbsp_woocommerce_add_to_cart' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dopbsp_woocommerce_add_to_cart' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'DOPBSP_permissions_calendars' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'DOPBSP_permissions_calendars' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'DOPBSP_permissions_calendars' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'DOPBSP_permissions_calendars' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'DOPBSP_backend_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'DOPBSP_backend_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'DOPBSP_backend_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'DOPBSP_backend_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'DOPBSP_permissions_view' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'DOPBSP_permissions_view' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'DOPBSP_permissions_view' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'DOPBSP_permissions_view' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'DOPBSP_permissions_use' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'DOPBSP_permissions_use' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'DOPBSP_permissions_use' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'DOPBSP_permissions_use' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'DOPBSP_permissions_custom_posts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'DOPBSP_permissions_custom_posts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'DOPBSP_permissions_custom_posts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'DOPBSP_permissions_custom_posts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'DOPBSP_permissions_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'DOPBSP_permissions_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'DOPBSP_permissions_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'DOPBSP_permissions_%' ) );

