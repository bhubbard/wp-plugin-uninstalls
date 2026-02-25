<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qalam_client_id');
delete_site_option('qalam_client_id');
delete_option('qalam_document_id_source');
delete_site_option('qalam_document_id_source');
delete_option('qalam_document_source_value');
delete_site_option('qalam_document_source_value');
delete_option('qalam_allowed_to_use');
delete_site_option('qalam_allowed_to_use');

