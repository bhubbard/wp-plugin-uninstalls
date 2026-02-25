-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bp_profile_views_admin_welcome_options', 'bp_profile_views_general_options', '_woo_document_preview_is_new_install');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wcdp_documents', 'wcdp_preview_attachment');
DELETE FROM wp_usermeta WHERE meta_key IN ('wcdp_documents', 'wcdp_preview_attachment');
DELETE FROM wp_termmeta WHERE meta_key IN ('wcdp_documents', 'wcdp_preview_attachment');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wcdp_documents', 'wcdp_preview_attachment');

