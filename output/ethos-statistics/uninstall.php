<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ethos_stats_options');
delete_site_option('ethos_stats_options');
delete_option('panelid');
delete_site_option('panelid');

// Delete Transients
delete_transient('ethos_stats');
delete_site_transient('ethos_stats');

