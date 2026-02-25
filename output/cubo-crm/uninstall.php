<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cubo_crm_form_settings');
delete_site_option('cubo_crm_form_settings');
delete_option('cubo_crm_global_token');
delete_site_option('cubo_crm_global_token');
delete_option('cubo_crm_smtp_settings');
delete_site_option('cubo_crm_smtp_settings');

