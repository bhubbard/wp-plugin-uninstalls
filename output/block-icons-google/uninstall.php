<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('block_icons_redirect_after_activation_option');
delete_site_option('block_icons_redirect_after_activation_option');
delete_option('block_icons_active_notices_option');
delete_site_option('block_icons_active_notices_option');

