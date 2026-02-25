<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('stdlstusvwr_plugin_slugs');
delete_site_option('stdlstusvwr_plugin_slugs');

