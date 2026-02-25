<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pbu_lightbox');
delete_site_option('pbu_lightbox');
delete_option('pbu_font_awesome');
delete_site_option('pbu_font_awesome');

