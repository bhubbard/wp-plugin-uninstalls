-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('esig_global_document_id', 'WP_ESignature__Formidable__Forms_Digital_Signature_documentation', 'WP_ESignature__Formidable_Forms_Digital_Signature_documentation', 'remove_rating_widget_formidable', '_esign_formidableform_redirect');

