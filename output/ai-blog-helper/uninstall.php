<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aiblhewi_options');
delete_site_option('aiblhewi_options');

// Delete Transients
delete_transient('aiblhewi_cache');
delete_site_transient('aiblhewi_cache');

