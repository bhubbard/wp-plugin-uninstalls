<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gssth_disable_gallery_style');
delete_site_option('gssth_disable_gallery_style');
delete_option('gssth_override_gallery_style');
delete_site_option('gssth_override_gallery_style');

