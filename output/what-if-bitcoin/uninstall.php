<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('whatif_currency');
delete_site_option('whatif_currency');
delete_option('whatif_bg_color');
delete_site_option('whatif_bg_color');
delete_option('whatif_text_color');
delete_site_option('whatif_text_color');
delete_option('whatif_input_bg_color');
delete_site_option('whatif_input_bg_color');
delete_option('whatif_input_text_color');
delete_site_option('whatif_input_text_color');
delete_option('whatif_input_border_color');
delete_site_option('whatif_input_border_color');
delete_option('whatif_button_bg_color');
delete_site_option('whatif_button_bg_color');
delete_option('whatif_button_text_color');
delete_site_option('whatif_button_text_color');
delete_option('whatif_input_border_radius');
delete_site_option('whatif_input_border_radius');
delete_option('whatif_border_radius');
delete_site_option('whatif_border_radius');
delete_option('whatif_result_border_color');
delete_site_option('whatif_result_border_color');
delete_option('whatif_result_text_color');
delete_site_option('whatif_result_text_color');
delete_option('whatif_made_love');
delete_site_option('whatif_made_love');
delete_option('whatif_tech');
delete_site_option('whatif_tech');

