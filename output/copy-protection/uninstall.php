<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('disable-right-cklick');
delete_site_option('disable-right-cklick');
delete_option('f12');
delete_site_option('f12');
delete_option('disable_right_cklick_text');
delete_site_option('disable_right_cklick_text');

