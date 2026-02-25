<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('advanced_galleria_theme');
delete_site_option('advanced_galleria_theme');
delete_option('advanced_galleria_thumb');
delete_site_option('advanced_galleria_thumb');
delete_option('advanced_galleria_large');
delete_site_option('advanced_galleria_large');

