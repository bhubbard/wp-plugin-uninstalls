<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('emojfopo_enabled_emojis');
delete_site_option('emojfopo_enabled_emojis');
delete_option('emojfopo_position');
delete_site_option('emojfopo_position');
delete_option('emojfopo_post_types');
delete_site_option('emojfopo_post_types');
delete_option('emojfopo_custom_names');
delete_site_option('emojfopo_custom_names');
delete_option('emojfopo_title_text');
delete_site_option('emojfopo_title_text');

