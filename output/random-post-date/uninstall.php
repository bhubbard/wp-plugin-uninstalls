<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rndpd_date1');
delete_site_option('rndpd_date1');
delete_option('rndpd_date2');
delete_site_option('rndpd_date2');
delete_option('rndpd_post_type');
delete_site_option('rndpd_post_type');
delete_option('rndpd_set_modified_date');
delete_site_option('rndpd_set_modified_date');
delete_option('rndpd_exclude_ids');
delete_site_option('rndpd_exclude_ids');

