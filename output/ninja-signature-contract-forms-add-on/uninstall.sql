-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ninja_forms_load_deprecated', 'remove_rating_widget_ninja', 'esig_global_document_id', 'WP_ESignature__Ninja_Forms_Digital_Signature_documentation', '_esign_ninja_redirect');

