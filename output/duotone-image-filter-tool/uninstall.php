<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('duotone_highlight');
delete_site_option('duotone_highlight');
delete_option('duotone_shadow');
delete_site_option('duotone_shadow');
delete_option('duotone_presets');
delete_site_option('duotone_presets');

