<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lastfm_tabs_options');
delete_site_option('lastfm_tabs_options');

// Delete Transients
delete_transient('lastfm_tabs_template_cache');
delete_site_transient('lastfm_tabs_template_cache');
delete_transient('lastfm_tabs_shortcode_cache');
delete_site_transient('lastfm_tabs_shortcode_cache');

