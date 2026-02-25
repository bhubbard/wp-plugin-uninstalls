<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nsc_bar_first_activation');
delete_site_option('nsc_bar_first_activation');
delete_option('nsc_bar_intern_notice_review_later');
delete_site_option('nsc_bar_intern_notice_review_later');
delete_option('nsc_bar_license_key');
delete_site_option('nsc_bar_license_key');
delete_option('nsc_bar_capabilityCustom');
delete_site_option('nsc_bar_capabilityCustom');

