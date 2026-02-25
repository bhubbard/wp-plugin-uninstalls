<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sbf_show_wiki_link');
delete_site_option('sbf_show_wiki_link');
delete_option('sbf_default_units');
delete_site_option('sbf_default_units');
delete_option('sbf_font_size');
delete_site_option('sbf_font_size');
delete_option('sbf_background_colour');
delete_site_option('sbf_background_colour');
delete_option('sbf_border_width');
delete_site_option('sbf_border_width');
delete_option('sbf_border_colour');
delete_site_option('sbf_border_colour');

