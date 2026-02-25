<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fmcf_clr_opt_set');
delete_site_option('fmcf_clr_opt_set');

