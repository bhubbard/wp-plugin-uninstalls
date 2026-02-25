<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pajdm_menu_breakpoint');
delete_site_option('pajdm_menu_breakpoint');
delete_option('pajdm_menu_top_bottom');
delete_site_option('pajdm_menu_top_bottom');
delete_option('pajdm_menu_left_right');
delete_site_option('pajdm_menu_left_right');
delete_option('pajdm_menu_dropdown_items');
delete_site_option('pajdm_menu_dropdown_items');
delete_option('pajdm_menu_line_color');
delete_site_option('pajdm_menu_line_color');
delete_option('pajdm_line_thickness');
delete_site_option('pajdm_line_thickness');
delete_option('pajdm_main_menu_line_position');
delete_site_option('pajdm_main_menu_line_position');
delete_option('pajdm_dropdown_menu_line_position');
delete_site_option('pajdm_dropdown_menu_line_position');
delete_option('pajdm_main_menu_line_option');
delete_site_option('pajdm_main_menu_line_option');
delete_option('pajdm_dropdown_line_option');
delete_site_option('pajdm_dropdown_line_option');
delete_option('pajdm_options_dropdown_menu_icon');
delete_site_option('pajdm_options_dropdown_menu_icon');

