<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('advancedexcerpt_length');
delete_site_option('advancedexcerpt_length');
delete_option('advanced_excerpt');
delete_site_option('advanced_excerpt');

