<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lgefep_already_rated');
delete_site_option('lgefep_already_rated');
delete_option('lgefep_install_date');
delete_site_option('lgefep_install_date');
delete_option('lgefep_initial_save_version');
delete_site_option('lgefep_initial_save_version');
delete_option('lgefep_review_notice_dismiss');
delete_site_option('lgefep_review_notice_dismiss');
delete_option('LGEFEP_VERSION');
delete_site_option('LGEFEP_VERSION');
delete_option('LGEFEP_TYPE');
delete_site_option('LGEFEP_TYPE');

