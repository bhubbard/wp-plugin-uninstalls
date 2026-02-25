<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('IR_TextLength');
delete_site_option('IR_TextLength');
delete_option('IR_SameTime');
delete_site_option('IR_SameTime');
delete_option('IR_Height');
delete_site_option('IR_Height');
delete_option('IR_type');
delete_site_option('IR_type');
delete_option('IR_random');
delete_site_option('IR_random');
delete_option('IR_pluginversion');
delete_site_option('IR_pluginversion');
delete_option('IR_Title');
delete_site_option('IR_Title');

