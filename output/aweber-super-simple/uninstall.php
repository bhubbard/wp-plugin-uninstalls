<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('awss_version');
delete_site_option('awss_version');
delete_option('awss_actions');
delete_site_option('awss_actions');
delete_option('awss_defaultterms');
delete_site_option('awss_defaultterms');
delete_option('awss_subscribe');
delete_site_option('awss_subscribe');
delete_option('awss_registration_greeting');
delete_site_option('awss_registration_greeting');
delete_option('awss_formid');
delete_site_option('awss_formid');
delete_option('awss_unit');
delete_site_option('awss_unit');
delete_option('awss_adtracking');
delete_site_option('awss_adtracking');
delete_option('awss_alreadysubscribed');
delete_site_option('awss_alreadysubscribed');
delete_option('awss_showterms');
delete_site_option('awss_showterms');

