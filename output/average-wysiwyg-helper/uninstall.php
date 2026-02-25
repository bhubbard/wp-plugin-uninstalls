<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wysiwym_display');
delete_site_option('wysiwym_display');
delete_option('cancel_mce_defaults');
delete_site_option('cancel_mce_defaults');

