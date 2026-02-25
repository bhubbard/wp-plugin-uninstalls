<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('minipopup_style');
delete_site_option('minipopup_style');
delete_option('minipopup_smart_mode');
delete_site_option('minipopup_smart_mode');
delete_option('c1_minipopup');
delete_site_option('c1_minipopup');
delete_option('c2_minipopup');
delete_site_option('c2_minipopup');
delete_option('c3_minipopup');
delete_site_option('c3_minipopup');
delete_option('c4_minipopup');
delete_site_option('c4_minipopup');

