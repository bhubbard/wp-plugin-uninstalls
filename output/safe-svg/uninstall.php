<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('safe_svg_upload_roles');
delete_site_option('safe_svg_upload_roles');
delete_option('safe_svg_large_svg');
delete_site_option('safe_svg_large_svg');

