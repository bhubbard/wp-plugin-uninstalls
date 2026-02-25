-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('esig_global_document_id', 'WP_ESignature__Cf7_Forms_Digital_Signature_documentation', 'remove_rating_widget_cf7', '_esign_cf7_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('esig-cf7-settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('esig-cf7-settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('esig-cf7-settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('esig-cf7-settings');

