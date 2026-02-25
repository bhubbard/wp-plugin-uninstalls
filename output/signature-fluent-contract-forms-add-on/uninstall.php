<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fluentform_global_modules_status');
delete_site_option('fluentform_global_modules_status');
delete_option('WP_ESignature__Fluent_Forms_Digital_Signature_documentation');
delete_site_option('WP_ESignature__Fluent_Forms_Digital_Signature_documentation');

// Delete Transients
delete_transient('_esign_fluentform_redirect');
delete_site_transient('_esign_fluentform_redirect');

