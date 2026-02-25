<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rg_popup_enable');
delete_site_option('rg_popup_enable');
delete_option('rg_popup_cookie');
delete_site_option('rg_popup_cookie');
delete_option('rg_popup_title');
delete_site_option('rg_popup_title');
delete_option('rg_popup_content');
delete_site_option('rg_popup_content');
delete_option('rg_popup_style');
delete_site_option('rg_popup_style');
delete_option('rg_popup_from');
delete_site_option('rg_popup_from');
delete_option('rg_popup_to');
delete_site_option('rg_popup_to');
delete_option('rg_popup_exclude');
delete_site_option('rg_popup_exclude');

