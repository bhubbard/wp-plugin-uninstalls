<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('prottoge_text_color');
delete_site_option('prottoge_text_color');
delete_option('prottoge_hover_color');
delete_site_option('prottoge_hover_color');
delete_option('prottoge_border_color');
delete_site_option('prottoge_border_color');
delete_option('prottoge_enabled_post_types');
delete_site_option('prottoge_enabled_post_types');

