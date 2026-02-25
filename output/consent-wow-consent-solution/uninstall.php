<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('consentwow_forms');
delete_site_option('consentwow_forms');
delete_option('consentwow_forms_next_id');
delete_site_option('consentwow_forms_next_id');
delete_option('consentwow_api_token');
delete_site_option('consentwow_api_token');

// Delete Transients
delete_transient('consentwow_consent_purposes');
delete_site_transient('consentwow_consent_purposes');
delete_transient('consentwow_form_notice');
delete_site_transient('consentwow_form_notice');

