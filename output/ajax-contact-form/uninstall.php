<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ajaxcf_recipient');
delete_site_option('ajaxcf_recipient');
delete_option('ajaxcf_subject');
delete_site_option('ajaxcf_subject');
delete_option('ajaxcf_confirm');
delete_site_option('ajaxcf_confirm');
delete_option('ajaxcf_custom_css');
delete_site_option('ajaxcf_custom_css');

// Drop Custom Tables
global $wpdb;
$wpdb->query("DROP TABLE IF EXISTS {$wpdb->prefix}wp_design_form");
