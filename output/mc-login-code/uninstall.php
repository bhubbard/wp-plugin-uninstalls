<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mc6397lc_LoginCode');
delete_site_option('mc6397lc_LoginCode');

