<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ff_use_as_default_image');
delete_site_option('ff_use_as_default_image');
delete_option('ff_default_favicon_id');
delete_site_option('ff_default_favicon_id');
delete_option('ff_favicon_as_apple_touch_icon');
delete_site_option('ff_favicon_as_apple_touch_icon');

