<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('autoload_optimizer_disabled_options');
delete_site_option('autoload_optimizer_disabled_options');

