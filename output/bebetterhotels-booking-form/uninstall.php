<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bbh_url');
delete_site_option('bbh_url');
delete_option('bbh_customer');
delete_site_option('bbh_customer');
delete_option('bbh_adults_field');
delete_site_option('bbh_adults_field');
delete_option('bbh_childrens_field');
delete_site_option('bbh_childrens_field');
delete_option('bbh_show_childrens_field');
delete_site_option('bbh_show_childrens_field');
delete_option('bbh_calendar_theme');
delete_site_option('bbh_calendar_theme');
delete_option('bbh_button_border_color');
delete_site_option('bbh_button_border_color');
delete_option('bbh_button_background_color');
delete_site_option('bbh_button_background_color');
delete_option('bbh_button_text_color');
delete_site_option('bbh_button_text_color');

