<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('puipui_dbgt_form_option_library');
delete_site_option('puipui_dbgt_form_option_library');
delete_option('puipui_dbgt_form_option_apikey');
delete_site_option('puipui_dbgt_form_option_apikey');
delete_option('puipui_dbgt_form_option_safesearch');
delete_site_option('puipui_dbgt_form_option_safesearch');
delete_option('puipui_dbgt_form_option_apijeton');
delete_site_option('puipui_dbgt_form_option_apijeton');
delete_option('puipui_dbgt_form_option_powered');
delete_site_option('puipui_dbgt_form_option_powered');
delete_option('puipui_dbgt_form_option_imagesize');
delete_site_option('puipui_dbgt_form_option_imagesize');
delete_option('puipui_dbgt_form_option_legal');
delete_site_option('puipui_dbgt_form_option_legal');
delete_option('puipui_dbgt_form_option_cachingtime');
delete_site_option('puipui_dbgt_form_option_cachingtime');
delete_option('dbgt_puipui_form_option_cachingtime');
delete_site_option('dbgt_puipui_form_option_cachingtime');

