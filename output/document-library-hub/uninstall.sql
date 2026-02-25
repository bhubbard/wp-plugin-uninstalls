-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dlhp_flush_rewrite_rules');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_dlhp_document_file_source', '_dlhp_document_file_url', '_dlhp_document_external_url', '_dlhp_document_file_size', '_dlhp_document_file_type', '_dlhp_restrict_access', '_dlhp_protected_roles');
DELETE FROM wp_usermeta WHERE meta_key IN ('_dlhp_document_file_source', '_dlhp_document_file_url', '_dlhp_document_external_url', '_dlhp_document_file_size', '_dlhp_document_file_type', '_dlhp_restrict_access', '_dlhp_protected_roles');
DELETE FROM wp_termmeta WHERE meta_key IN ('_dlhp_document_file_source', '_dlhp_document_file_url', '_dlhp_document_external_url', '_dlhp_document_file_size', '_dlhp_document_file_type', '_dlhp_restrict_access', '_dlhp_protected_roles');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_dlhp_document_file_source', '_dlhp_document_file_url', '_dlhp_document_external_url', '_dlhp_document_file_size', '_dlhp_document_file_type', '_dlhp_restrict_access', '_dlhp_protected_roles');

