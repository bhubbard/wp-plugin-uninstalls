<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('slt_button_text');
delete_site_option('slt_button_text');
delete_option('slt_button_class');
delete_site_option('slt_button_class');

