<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rlc_carousel_orderby');
delete_site_option('rlc_carousel_orderby');
delete_option('lgs_wordpress_gallery');
delete_site_option('lgs_wordpress_gallery');

