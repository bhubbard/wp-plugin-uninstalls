<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cl_chooserole');
delete_site_option('cl_chooserole');
delete_option('cl_logout_redirect');
delete_site_option('cl_logout_redirect');
delete_option('cl_logout_redirect_url');
delete_site_option('cl_logout_redirect_url');
delete_option('cl_gcaptcha');
delete_site_option('cl_gcaptcha');
delete_option('cl_gcaptcha_sitekey');
delete_site_option('cl_gcaptcha_sitekey');
delete_option('cl_hideuser');
delete_site_option('cl_hideuser');
delete_option('cl_nameandsurname');
delete_site_option('cl_nameandsurname');
delete_option('cl_email_username');
delete_site_option('cl_email_username');
delete_option('cl_single_password');
delete_site_option('cl_single_password');
delete_option('cl_antispam');
delete_site_option('cl_antispam');
delete_option('cl_newuserroles');
delete_site_option('cl_newuserroles');
delete_option('cl_termsconditions');
delete_site_option('cl_termsconditions');
delete_option('cl_termsconditionsMSG');
delete_site_option('cl_termsconditionsMSG');
delete_option('cl_enable_hash_in_login_page');
delete_site_option('cl_enable_hash_in_login_page');
delete_option('cl_login_redirect');
delete_site_option('cl_login_redirect');
delete_option('cl_passcomplex');
delete_site_option('cl_passcomplex');
delete_option('cl_standby');
delete_site_option('cl_standby');
delete_option('cl_emailnotification');
delete_site_option('cl_emailnotification');
delete_option('cl_emailnotificationcontent');
delete_site_option('cl_emailnotificationcontent');
delete_option('cl_automatic_login');
delete_site_option('cl_automatic_login');
delete_option('cl_emailvalidation');
delete_site_option('cl_emailvalidation');
delete_option('cl_gcaptcha_secretkey');
delete_site_option('cl_gcaptcha_secretkey');
delete_option('cl_login_id');
delete_site_option('cl_login_id');
delete_option('cl_login_url');
delete_site_option('cl_login_url');
delete_option('cl_edit_id');
delete_site_option('cl_edit_id');
delete_option('cl_restore_id');
delete_site_option('cl_restore_id');
delete_option('cl_restore_url');
delete_site_option('cl_restore_url');
delete_option('cl_register_id');
delete_site_option('cl_register_id');
delete_option('cl_register_url');
delete_site_option('cl_register_url');
delete_option('cl_register_redirect');
delete_site_option('cl_register_redirect');
delete_option('cl_register_redirect_url');
delete_site_option('cl_register_redirect_url');
delete_option('cl_adminbar_roles');
delete_site_option('cl_adminbar_roles');
delete_option('cl_adminbar');
delete_site_option('cl_adminbar');
delete_option('cl_dashboard');
delete_site_option('cl_dashboard');
delete_option('cl_edit_url');
delete_site_option('cl_edit_url');
delete_option('cl_termsconditionsURL');
delete_site_option('cl_termsconditionsURL');
delete_option('cl_url_redirect');
delete_site_option('cl_url_redirect');
delete_option('cl_login_redirect_url');
delete_site_option('cl_login_redirect_url');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_id' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_url' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_cl_temporary_pass_%', '_site_transient_cl_temporary_pass_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_new_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_new_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_new_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_new_email' ) );

