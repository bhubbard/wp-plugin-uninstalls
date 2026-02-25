<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('business_forms_doliprospect_dolibarr_url');
delete_site_option('business_forms_doliprospect_dolibarr_url');
delete_option('business_forms_doliprospect_api_key');
delete_site_option('business_forms_doliprospect_api_key');
delete_option('business_forms_doliprospect_version');
delete_site_option('business_forms_doliprospect_version');
delete_option('business_forms_doliprospect_default_status');
delete_site_option('business_forms_doliprospect_default_status');
delete_option('business_forms_doliprospect_notification_email');
delete_site_option('business_forms_doliprospect_notification_email');
delete_option('business_forms_doliprospect_default_deal_status');
delete_site_option('business_forms_doliprospect_default_deal_status');

