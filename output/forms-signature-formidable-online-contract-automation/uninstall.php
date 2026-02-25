<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('esig_global_document_id');
delete_site_option('esig_global_document_id');
delete_option('WP_ESignature__Formidable__Forms_Digital_Signature_documentation');
delete_site_option('WP_ESignature__Formidable__Forms_Digital_Signature_documentation');
delete_option('WP_ESignature__Formidable_Forms_Digital_Signature_documentation');
delete_site_option('WP_ESignature__Formidable_Forms_Digital_Signature_documentation');
delete_option('remove_rating_widget_formidable');
delete_site_option('remove_rating_widget_formidable');

// Delete Transients
delete_transient('_esign_formidableform_redirect');
delete_site_transient('_esign_formidableform_redirect');

