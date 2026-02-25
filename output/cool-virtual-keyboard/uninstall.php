<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('CVK_virtkeyboard_layout');
delete_site_option('CVK_virtkeyboard_layout');

