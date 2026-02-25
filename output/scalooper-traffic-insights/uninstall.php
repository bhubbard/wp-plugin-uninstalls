<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('scalooper_ti_site_option');
delete_site_option('scalooper_ti_site_option');
delete_option('scalooper_ti_option');
delete_site_option('scalooper_ti_option');

