<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('csf_demo_mode');
delete_site_option('csf_demo_mode');
delete_option('jh_disable_post_types');
delete_site_option('jh_disable_post_types');
delete_option('jh_disabled_option');
delete_site_option('jh_disabled_option');
delete_option('jh_installation_date');
delete_site_option('jh_installation_date');
delete_option('jh_review_notice_status');
delete_site_option('jh_review_notice_status');

