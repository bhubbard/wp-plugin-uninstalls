<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zlfms_aig_install_time');
delete_site_option('zlfms_aig_install_time');
delete_option('zlfms_aig_review_status');
delete_site_option('zlfms_aig_review_status');
delete_option('zlfms_aig_review_dismissed_until');
delete_site_option('zlfms_aig_review_dismissed_until');

