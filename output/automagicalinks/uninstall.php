<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('automagicalinks_options');
delete_site_option('automagicalinks_options');
delete_option('autolinking');
delete_site_option('autolinking');
delete_option('automagicality');
delete_site_option('automagicality');
delete_option('link_characters');
delete_site_option('link_characters');
delete_option('link_escape_character');
delete_site_option('link_escape_character');
delete_option('allowed_post_types');
delete_site_option('allowed_post_types');
delete_option('allowed_link_names');
delete_site_option('allowed_link_names');
delete_option('excluded_elements');
delete_site_option('excluded_elements');
delete_option('aliases');
delete_site_option('aliases');

