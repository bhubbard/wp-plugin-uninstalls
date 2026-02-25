<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('neofix_sdl_admin_notice');
delete_site_transient('neofix_sdl_admin_notice');

