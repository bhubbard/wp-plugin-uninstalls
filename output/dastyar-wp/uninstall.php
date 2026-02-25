<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mbwp_heartbeat');
delete_site_option('mbwp_heartbeat');
delete_option('mbwp_shortlink');
delete_site_option('mbwp_shortlink');
delete_option('mbwp_pingback');
delete_site_option('mbwp_pingback');
delete_option('mbwp_xml_rpc');
delete_site_option('mbwp_xml_rpc');
delete_option('mbwp_remove_qurey_string');
delete_site_option('mbwp_remove_qurey_string');
delete_option('mbwp_hide_wp');
delete_site_option('mbwp_hide_wp');
delete_option('mbwp_dns_prefetch');
delete_site_option('mbwp_dns_prefetch');
delete_option('mbwp_contact_form');
delete_site_option('mbwp_contact_form');
delete_option('mbwp_mbeds');
delete_site_option('mbwp_mbeds');
delete_option('mbwp_WLManifest');
delete_site_option('mbwp_WLManifest');
delete_option('mbwp_Remove_JQuery');
delete_site_option('mbwp_Remove_JQuery');
delete_option('mbwp_dashicons');
delete_site_option('mbwp_dashicons');
delete_option('mbwp_remove_url_comment');
delete_site_option('mbwp_remove_url_comment');
delete_option('mbwp_disable_acf');
delete_site_option('mbwp_disable_acf');
delete_option('mbwp_search');
delete_site_option('mbwp_search');
delete_option('mbwp_preload_fonts');
delete_site_option('mbwp_preload_fonts');

