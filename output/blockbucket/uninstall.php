<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('blockb_activation_flag');
delete_site_option('blockb_activation_flag');
delete_option('blockb_active_blocks');
delete_site_option('blockb_active_blocks');

