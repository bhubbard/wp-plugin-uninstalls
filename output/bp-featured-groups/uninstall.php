<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bp-featured-groups-count');
delete_site_option('bp-featured-groups-count');
delete_option('bpfg_groups_directory_banner');
delete_site_option('bpfg_groups_directory_banner');

