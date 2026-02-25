<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cw_image_optimizer_skip_check');
delete_site_option('cw_image_optimizer_skip_check');

