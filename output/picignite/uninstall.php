<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pi_cid');
delete_site_option('pi_cid');
delete_option('pi_show_ad');
delete_site_option('pi_show_ad');
delete_option('pi_align');
delete_site_option('pi_align');
delete_option('pi_width');
delete_site_option('pi_width');
delete_option('pi_height');
delete_site_option('pi_height');
delete_option('pi_attr');
delete_site_option('pi_attr');
delete_option('pi_target');
delete_site_option('pi_target');
delete_option('pi_sid');
delete_site_option('pi_sid');

