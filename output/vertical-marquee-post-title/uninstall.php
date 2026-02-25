<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vmpt_title');
delete_site_option('vmpt_title');
delete_option('vmpt_setting');
delete_site_option('vmpt_setting');
delete_option('vmpt_setting1');
delete_site_option('vmpt_setting1');
delete_option('vmpt_setting2');
delete_site_option('vmpt_setting2');
delete_option('vmpt_setting3');
delete_site_option('vmpt_setting3');
delete_option('vmpt_setting4');
delete_site_option('vmpt_setting4');

