<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('neptune_affiliate_id');
delete_site_option('neptune_affiliate_id');
delete_option('neptune_push_overlay');
delete_site_option('neptune_push_overlay');
delete_option('neptune_push_overlay_text');
delete_site_option('neptune_push_overlay_text');

