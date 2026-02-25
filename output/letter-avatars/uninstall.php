<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sgi_ltrav_ver');
delete_site_option('sgi_ltrav_ver');
delete_option('sgi_ltrav_opts');
delete_site_option('sgi_ltrav_opts');

// Delete Transients
delete_transient('sgi_ltrav_gfonts');
delete_site_transient('sgi_ltrav_gfonts');

