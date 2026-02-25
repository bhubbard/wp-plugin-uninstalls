<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('at_lazy_loader_image_placeholder');
delete_site_option('at_lazy_loader_image_placeholder');

