<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('thinker_translator_cache_wp_footer');
delete_site_option('thinker_translator_cache_wp_footer');
delete_option('thinker_translator_cache_shortcode');
delete_site_option('thinker_translator_cache_shortcode');
delete_option('thinker_translator_settings');
delete_site_option('thinker_translator_settings');
delete_option('thinker_translator_db_version');
delete_site_option('thinker_translator_db_version');

