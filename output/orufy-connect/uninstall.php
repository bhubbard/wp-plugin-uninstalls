<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('orufy_connect_appid');
delete_site_option('orufy_connect_appid');
delete_option('orufy_connect_whatsapp_api_key');
delete_site_option('orufy_connect_whatsapp_api_key');
delete_option('orufy_connect_whatsapp_api_secret');
delete_site_option('orufy_connect_whatsapp_api_secret');
delete_option('orufy_whatsapp_api_response');
delete_site_option('orufy_whatsapp_api_response');
delete_option('orufy_template_status_selections');
delete_site_option('orufy_template_status_selections');

