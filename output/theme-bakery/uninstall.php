<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_s_theme_options');
delete_site_option('_s_theme_options');

// Delete Transients
delete_transient('all_the_cool_cats');
delete_site_transient('all_the_cool_cats');

