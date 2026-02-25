<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('schwarttzys_open_graph_default_image');
delete_site_option('schwarttzys_open_graph_default_image');

