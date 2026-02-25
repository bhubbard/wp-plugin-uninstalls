<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('current_theme');
delete_site_option('current_theme');
delete_option('smk_sidebar_generator_option');
delete_site_option('smk_sidebar_generator_option');

// Delete Transients
delete_transient('smk_sidebar_generator_option_v2');
delete_site_transient('smk_sidebar_generator_option_v2');

