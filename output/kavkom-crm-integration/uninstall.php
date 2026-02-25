<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kavkom_crm_leads_settings_options');
delete_site_option('kavkom_crm_leads_settings_options');

