<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pns_google_api_key');
delete_site_option('pns_google_api_key');
delete_option('pns_send_to_android_via');
delete_site_option('pns_send_to_android_via');
delete_option('pns_ios_certi_name');
delete_site_option('pns_ios_certi_name');
delete_option('pns_send_via_production');
delete_site_option('pns_send_via_production');
delete_option('pns_send_to_ios');
delete_site_option('pns_send_to_ios');
delete_option('pns_send_to_android');
delete_site_option('pns_send_to_android');
delete_option('ios_certi_name');
delete_site_option('ios_certi_name');
delete_option('pns_on_new_post_publish');
delete_site_option('pns_on_new_post_publish');
delete_option('pns_on_new_page_save');
delete_site_option('pns_on_new_page_save');
delete_option('pns_on_new_user_register');
delete_site_option('pns_on_new_user_register');
delete_option('pns_on_new_comment_post');
delete_site_option('pns_on_new_comment_post');
delete_option('pns_send_via_sandbox');
delete_site_option('pns_send_via_sandbox');
delete_option('pns_ios_certi_path');
delete_site_option('pns_ios_certi_path');
delete_option('pns_ios_certificate_path');
delete_site_option('pns_ios_certificate_path');
delete_option('pns_ios_certificate_name');
delete_site_option('pns_ios_certificate_name');

