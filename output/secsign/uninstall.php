<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('secsignid_service_name');
delete_site_option('secsignid_service_name');
delete_option('secsignid_frame');
delete_site_option('secsignid_frame');
delete_option('secsignid_show_on_login_page');
delete_site_option('secsignid_show_on_login_page');
delete_option('secsign_id_cookie_secret');
delete_site_option('secsign_id_cookie_secret');
delete_option('secsignid_allow_account_creation');
delete_site_option('secsignid_allow_account_creation');
delete_option('secsignid_allow_account_assignment');
delete_site_option('secsignid_allow_account_assignment');

