<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('siarashield_private_key');
delete_site_option('siarashield_private_key');
delete_option('list_form_data');
delete_site_option('list_form_data');
delete_option('siarashield_css');
delete_site_option('siarashield_css');
delete_option('siarashield_commentform');
delete_site_option('siarashield_commentform');
delete_option('siarashield_tocken');
delete_site_option('siarashield_tocken');
delete_option('siarashield_form_selection');
delete_site_option('siarashield_form_selection');
delete_option('field_id_class');
delete_site_option('field_id_class');
delete_option('button_id_class');
delete_site_option('button_id_class');
delete_option('button_name');
delete_site_option('button_name');

