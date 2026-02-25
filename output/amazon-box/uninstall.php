<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('msg');
delete_site_option('msg');
delete_option('ab_box_1');
delete_site_option('ab_box_1');
delete_option('ab_box_2');
delete_site_option('ab_box_2');
delete_option('ab_box_3');
delete_site_option('ab_box_3');
delete_option('ab_box_4');
delete_site_option('ab_box_4');
delete_option('ab_box_5');
delete_site_option('ab_box_5');
delete_option('ab_box_6');
delete_site_option('ab_box_6');
delete_option('AS');
delete_site_option('AS');
delete_option('page');
delete_site_option('page');
delete_option('Pos');
delete_site_option('Pos');
delete_option('Page');
delete_site_option('Page');

