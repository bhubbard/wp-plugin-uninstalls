<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('egts_option_xl_size');
delete_site_option('egts_option_xl_size');
delete_option('egts_option_l_size');
delete_site_option('egts_option_l_size');
delete_option('egts_option_m_size');
delete_site_option('egts_option_m_size');
delete_option('egts_option_s_size');
delete_site_option('egts_option_s_size');
delete_option('egts_option_xs_size');
delete_site_option('egts_option_xs_size');
delete_option('egts_option_primary_color');
delete_site_option('egts_option_primary_color');
delete_option('egts_option_secondary_color');
delete_site_option('egts_option_secondary_color');
delete_option('egts_option_tertiary_color');
delete_site_option('egts_option_tertiary_color');
delete_option('egts_option_quaternary_color');
delete_site_option('egts_option_quaternary_color');
delete_option('egts_option_quinary_color');
delete_site_option('egts_option_quinary_color');
delete_option('egts_select_unit_font_size');
delete_site_option('egts_select_unit_font_size');
delete_option('egts_max-width-gutenberg-editor-page');
delete_site_option('egts_max-width-gutenberg-editor-page');
delete_option('egts_egts_option_xl_size');
delete_site_option('egts_egts_option_xl_size');

