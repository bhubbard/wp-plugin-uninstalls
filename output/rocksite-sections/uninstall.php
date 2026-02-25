<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rocksite_blocks_library_activation_redirect');
delete_site_option('rocksite_blocks_library_activation_redirect');
delete_option('rocksite_kit_css');
delete_site_option('rocksite_kit_css');
delete_option('kadence_blocks_redirect_on_activation');
delete_site_option('kadence_blocks_redirect_on_activation');

