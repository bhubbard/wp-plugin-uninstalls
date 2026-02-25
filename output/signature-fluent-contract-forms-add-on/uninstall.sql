-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fluentform_global_modules_status', 'WP_ESignature__Fluent_Forms_Digital_Signature_documentation', '_esign_fluentform_redirect');

