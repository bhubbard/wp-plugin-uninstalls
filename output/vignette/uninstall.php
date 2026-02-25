<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vignette_css_ver');
delete_site_option('vignette_css_ver');
delete_option('vignette_opacity');
delete_site_option('vignette_opacity');
delete_option('vignette_size');
delete_site_option('vignette_size');

