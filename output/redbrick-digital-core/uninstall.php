<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wlio_api_url');
delete_site_option('wlio_api_url');
delete_option('rbd_core_review_engine_url_updated');
delete_site_option('rbd_core_review_engine_url_updated');
delete_option('rbd_core_review_engine_url');
delete_site_option('rbd_core_review_engine_url');
delete_option('RBD_CORE_VALID');
delete_site_option('RBD_CORE_VALID');
delete_option('rbd_core_hipaa_compliance');
delete_site_option('rbd_core_hipaa_compliance');

// Delete Transients
delete_transient('rbd_core_api_call');
delete_site_transient('rbd_core_api_call');

