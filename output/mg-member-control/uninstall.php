<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mgmc_disableusers');
delete_site_option('mgmc_disableusers');
delete_option('mgmc_hidedashboard');
delete_site_option('mgmc_hidedashboard');
delete_option('mgmc_hidemenuitems');
delete_site_option('mgmc_hidemenuitems');
delete_option('mgmc_recaptchasitekey');
delete_site_option('mgmc_recaptchasitekey');
delete_option('mgmc_simplecaptcha');
delete_site_option('mgmc_simplecaptcha');
delete_option('mgmc_passcomplex');
delete_site_option('mgmc_passcomplex');
delete_option('mgmc_replacementfooter');
delete_site_option('mgmc_replacementfooter');
delete_option('mgmc_salt');
delete_site_option('mgmc_salt');
delete_option('mgmc_emailwelcomecontent');
delete_site_option('mgmc_emailwelcomecontent');
delete_option('mgmc_emailwelcomesubject');
delete_site_option('mgmc_emailwelcomesubject');
delete_option('mgmc_emailvalidationcontent');
delete_site_option('mgmc_emailvalidationcontent');
delete_option('mgmc_emailvalidationsubject');
delete_site_option('mgmc_emailvalidationsubject');
delete_option('mgmc_logoutredirect');
delete_site_option('mgmc_logoutredirect');
delete_option('mgmc_logoutredirecturl');
delete_site_option('mgmc_logoutredirecturl');
delete_option('mgmc_emailwelcome');
delete_site_option('mgmc_emailwelcome');
delete_option('mgmc_validateuserurl');
delete_site_option('mgmc_validateuserurl');
delete_option('mgmc_loginredirect');
delete_site_option('mgmc_loginredirect');
delete_option('mgmc_loginredirecturl');
delete_site_option('mgmc_loginredirecturl');
delete_option('mgmc_emailusername');
delete_site_option('mgmc_emailusername');
delete_option('mgmc_recaptchasecretkey');
delete_site_option('mgmc_recaptchasecretkey');
delete_option('mgmc_emailvalidation');
delete_site_option('mgmc_emailvalidation');
delete_option('mgmc_emailnotification');
delete_site_option('mgmc_emailnotification');
delete_option('mgmc_hidebyauthor');
delete_site_option('mgmc_hidebyauthor');
delete_option('mgmc_hideentrylink');
delete_site_option('mgmc_hideentrylink');
delete_option('mgmc_hideformtitle');
delete_site_option('mgmc_hideformtitle');
delete_option('mgmc_termsconditions');
delete_site_option('mgmc_termsconditions');
delete_option('mgmc_termsconditionstxt');
delete_site_option('mgmc_termsconditionstxt');
delete_option('mgmc_termsconditionsmsg');
delete_site_option('mgmc_termsconditionsmsg');
delete_option('mgmc_overrideregister');
delete_site_option('mgmc_overrideregister');
delete_option('mgmc_hideregister');
delete_site_option('mgmc_hideregister');
delete_option('mgmc_hidepasswordreset');
delete_site_option('mgmc_hidepasswordreset');
delete_option('mgmc_showavatarf');
delete_site_option('mgmc_showavatarf');
delete_option('mgmc_showuserf');
delete_site_option('mgmc_showuserf');
delete_option('mgmc_showlogout');
delete_site_option('mgmc_showlogout');
delete_option('mgmc_hideadminbar');
delete_site_option('mgmc_hideadminbar');
delete_option('mgmc_validateipaccess');
delete_site_option('mgmc_validateipaccess');
delete_option('mgmc_loginrename');
delete_site_option('mgmc_loginrename');
delete_option('mgmc_loginrenameslug');
delete_site_option('mgmc_loginrenameslug');
delete_option('mgmc_loginurl');
delete_site_option('mgmc_loginurl');
delete_option('mgmc_hideavatarw');
delete_site_option('mgmc_hideavatarw');
delete_option('mgmc_hideuserw');
delete_site_option('mgmc_hideuserw');
delete_option('mgmc_reseturl');
delete_site_option('mgmc_reseturl');
delete_option('mgmc_registerurl');
delete_site_option('mgmc_registerurl');
delete_option('mgmc_installed');
delete_site_option('mgmc_installed');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'mgmc_disableuser' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'mgmc_disableuser' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'mgmc_disableuser' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'mgmc_disableuser' ) );

