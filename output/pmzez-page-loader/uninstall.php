<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pmzez_lazy_loader_options');
delete_site_option('pmzez_lazy_loader_options');

