-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('esig_global_document_id', 'WP_ESignature__WP_Forms_Digital_Signature_documentation', 'remove_rating_widget_wpform', '_esign_wpform_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('esig-wpform-settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('esig-wpform-settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('esig-wpform-settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('esig-wpform-settings');

