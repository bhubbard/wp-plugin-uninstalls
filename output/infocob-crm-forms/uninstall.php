<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('infocob_crm_forms_settings');
delete_site_option('infocob_crm_forms_settings');
delete_option('infocob_db_version');
delete_site_option('infocob_db_version');
delete_option('INFOCOB_CRM_FORMS_UPGRADE_VERSION');
delete_site_option('INFOCOB_CRM_FORMS_UPGRADE_VERSION');

// Clear Cron Jobs
wp_clear_scheduled_hook('infocob_crm_forms_purge_logs_event');

