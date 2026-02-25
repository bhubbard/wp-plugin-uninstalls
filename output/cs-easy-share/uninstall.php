<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cses_enable_box');
delete_site_option('cses_enable_box');
delete_option('cses_enable_fontawesome');
delete_site_option('cses_enable_fontawesome');
delete_option('cses_display_position');
delete_site_option('cses_display_position');
delete_option('cses_display_icon_names');
delete_site_option('cses_display_icon_names');
delete_option('cses_question_text');
delete_site_option('cses_question_text');
delete_option('cses_display_location');
delete_site_option('cses_display_location');
delete_option('cses_display_buttons');
delete_site_option('cses_display_buttons');
delete_option('cses_options_group');
delete_site_option('cses_options_group');

