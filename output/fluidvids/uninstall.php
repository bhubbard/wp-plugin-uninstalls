<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fluidvids');
delete_site_option('fluidvids');
delete_option('fluidvids-urls');
delete_site_option('fluidvids-urls');

