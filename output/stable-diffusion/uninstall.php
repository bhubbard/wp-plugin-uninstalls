<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('stable_diffusion_settings');
delete_site_option('stable_diffusion_settings');
delete_option('stable_diffusion_options');
delete_site_option('stable_diffusion_options');

