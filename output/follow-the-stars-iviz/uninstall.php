<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('iviz-mouse-star-setting');
delete_site_option('iviz-mouse-star-setting');

