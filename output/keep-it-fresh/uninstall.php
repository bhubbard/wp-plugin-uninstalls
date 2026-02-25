<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kif_mode');
delete_site_option('kif_mode');
delete_option('kif_cutoffdate');
delete_site_option('kif_cutoffdate');
delete_option('kif_cutoffdays');
delete_site_option('kif_cutoffdays');

