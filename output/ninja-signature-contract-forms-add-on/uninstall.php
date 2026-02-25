<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ninja_forms_load_deprecated');
delete_site_option('ninja_forms_load_deprecated');
delete_option('remove_rating_widget_ninja');
delete_site_option('remove_rating_widget_ninja');
delete_option('esig_global_document_id');
delete_site_option('esig_global_document_id');
delete_option('WP_ESignature__Ninja_Forms_Digital_Signature_documentation');
delete_site_option('WP_ESignature__Ninja_Forms_Digital_Signature_documentation');

// Delete Transients
delete_transient('_esign_ninja_redirect');
delete_site_transient('_esign_ninja_redirect');

