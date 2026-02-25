<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mtg_api_token');
delete_site_option('mtg_api_token');
delete_option('mtg_company_id');
delete_site_option('mtg_company_id');
delete_option('mtg_popup_form_id');
delete_site_option('mtg_popup_form_id');
delete_option('mtg_popup_delay');
delete_site_option('mtg_popup_delay');
delete_option('mtg_popup_enable');
delete_site_option('mtg_popup_enable');
delete_option('mtg_popup_form_name');
delete_site_option('mtg_popup_form_name');
delete_option('mtg_popup_title');
delete_site_option('mtg_popup_title');
delete_option('mtg_popup_description');
delete_site_option('mtg_popup_description');
delete_option('mtg_popup_submit');
delete_site_option('mtg_popup_submit');
delete_option('mtg_popup_redirect');
delete_site_option('mtg_popup_redirect');

