<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('imegateleport_error');
delete_site_option('imegateleport_error');
delete_option('imegateleport-settings-fullname');
delete_site_option('imegateleport-settings-fullname');
delete_option('imegateleport-settings-kod');
delete_site_option('imegateleport-settings-kod');
delete_option('imegateleport-settings-postinstall');
delete_site_option('imegateleport-settings-postinstall');
delete_option('imegateleport-settings-article');
delete_site_option('imegateleport-settings-article');
delete_option('imegateleport-settings-fulldesc');
delete_site_option('imegateleport-settings-fulldesc');
delete_option('imegateleport-settings-warehouse-active');
delete_site_option('imegateleport-settings-warehouse-active');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'imegateleport-settings-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('imegateleport_stat_groups');
delete_site_option('imegateleport_stat_groups');
delete_option('imegateleport_stat_groups_replace');
delete_site_option('imegateleport_stat_groups_replace');
delete_option('imegateleport_stat_goods');
delete_site_option('imegateleport_stat_goods');
delete_option('imegateleport_stat_goods_replace');
delete_site_option('imegateleport_stat_goods_replace');
delete_option('imegateleport_stat_date');
delete_site_option('imegateleport_stat_date');
delete_option('imegateleport-settings-max-body-size');
delete_site_option('imegateleport-settings-max-body-size');
delete_option('woocommerce_db_version');
delete_site_option('woocommerce_db_version');
delete_option('woocommerce_version');
delete_site_option('woocommerce_version');
delete_option('imegateleport_progress');
delete_site_option('imegateleport_progress');
delete_option('imegateleport_complete');
delete_site_option('imegateleport_complete');
delete_option('imegateleport_files');
delete_site_option('imegateleport_files');
delete_option('imegateleport-settings-warehouse');
delete_site_option('imegateleport-settings-warehouse');
delete_option('imegateleport-settings-zip');
delete_site_option('imegateleport-settings-zip');
delete_option('imegateleport_query');
delete_site_option('imegateleport_query');

