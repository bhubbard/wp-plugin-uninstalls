<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('fofo_bec_vs_light_theme_activate');
delete_site_transient('fofo_bec_vs_light_theme_activate');

