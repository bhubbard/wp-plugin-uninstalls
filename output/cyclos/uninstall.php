<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cyclos_version');
delete_site_option('cyclos_version');
delete_option('cyclos_url');
delete_site_option('cyclos_url');
delete_option('cyclos_adminuser');
delete_site_option('cyclos_adminuser');
delete_option('cyclos_token');
delete_site_option('cyclos_token');
delete_option('cyclos_redirectUrl');
delete_site_option('cyclos_redirectUrl');
delete_option('cyclos_t_loginName');
delete_site_option('cyclos_t_loginName');
delete_option('cyclos_t_loginPassword');
delete_site_option('cyclos_t_loginPassword');
delete_option('cyclos_t_loginSubmit');
delete_site_option('cyclos_t_loginSubmit');
delete_option('cyclos_t_forgotLink');
delete_site_option('cyclos_t_forgotLink');
delete_option('cyclos_t_forgotEmail');
delete_site_option('cyclos_t_forgotEmail');
delete_option('cyclos_t_forgotCaptcha');
delete_site_option('cyclos_t_forgotCaptcha');
delete_option('cyclos_t_forgotNewCaptcha');
delete_site_option('cyclos_t_forgotNewCaptcha');
delete_option('cyclos_t_forgotSubmit');
delete_site_option('cyclos_t_forgotSubmit');
delete_option('cyclos_t_forgotCancel');
delete_site_option('cyclos_t_forgotCancel');
delete_option('cyclos_t_loginTitle');
delete_site_option('cyclos_t_loginTitle');
delete_option('cyclos_t_forgotTitle');
delete_site_option('cyclos_t_forgotTitle');
delete_option('cyclos_t_forgotDone');
delete_site_option('cyclos_t_forgotDone');
delete_option('cyclos_t_errorLogin');
delete_site_option('cyclos_t_errorLogin');
delete_option('cyclos_t_errorAddressBlocked');
delete_site_option('cyclos_t_errorAddressBlocked');
delete_option('cyclos_t_errorEmailNotFound');
delete_site_option('cyclos_t_errorEmailNotFound');
delete_option('cyclos_t_errorConnection');
delete_site_option('cyclos_t_errorConnection');
delete_option('cyclos_t_errorGeneral');
delete_site_option('cyclos_t_errorGeneral');
delete_option('cyclos_t_errorInaccessibleChannel');
delete_site_option('cyclos_t_errorInaccessibleChannel');
delete_option('cyclos_t_errorInaccessiblePrincipal');
delete_site_option('cyclos_t_errorInaccessiblePrincipal');
delete_option('cyclos_t_errorUserBlocked');
delete_site_option('cyclos_t_errorUserBlocked');
delete_option('cyclos_t_errorUserDisabled');
delete_site_option('cyclos_t_errorUserDisabled');
delete_option('cyclos_t_errorUserPending');
delete_site_option('cyclos_t_errorUserPending');
delete_option('cyclos_t_errorPasswordIndefinitelyBlocked');
delete_site_option('cyclos_t_errorPasswordIndefinitelyBlocked');
delete_option('cyclos_t_errorPasswordTemporarilyBlocked');
delete_site_option('cyclos_t_errorPasswordTemporarilyBlocked');
delete_option('cyclos_t_errorInvalidPassword');
delete_site_option('cyclos_t_errorInvalidPassword');
delete_option('cyclos_t_errorInvalidAccessClient');
delete_site_option('cyclos_t_errorInvalidAccessClient');
delete_option('cyclos_t_errorOperatorWithPendingAgreements');
delete_site_option('cyclos_t_errorOperatorWithPendingAgreements');
delete_option('cyclos_t_errorEntityNotFound');
delete_site_option('cyclos_t_errorEntityNotFound');
delete_option('cyclos_t_errorEntityNotFoundUser');
delete_site_option('cyclos_t_errorEntityNotFoundUser');
delete_option('cyclos_t_errorEntityNotFoundAccessClient');
delete_site_option('cyclos_t_errorEntityNotFoundAccessClient');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'widget_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

