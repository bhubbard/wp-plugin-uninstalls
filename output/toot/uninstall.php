<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('toot_settings');
delete_site_option('toot_settings');
delete_option('toot_sticky_testimonials');
delete_site_option('toot_sticky_testimonials');

