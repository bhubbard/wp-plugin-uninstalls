-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('magic_import_document_extractor_settings', 'magic_import_document_extractor_license_key', 'magic_import_document_extractor_license_email', 'magic_import_document_extractor_license_status', 'magic_import_document_extractor_credits_total', 'magic_import_document_extractor_credits_remaining', 'magic_import_document_extractor_reset_date', 'magic_import_document_extractor_plan_name', 'magic_import_document_extractor_current_usage', 'magic_import_document_extractor_license_tier', 'magic_import_document_extractor_pattern_usage', 'magic_import_document_extractor_form_activity', 'magic_import_document_extractor_last_document_credits', 'magic_import_document_extractor_last_usage_sync', 'magic_import_document_extractor_license_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_form', 'wpforms', 'forminator_form_meta', 'forminator_form');
DELETE FROM wp_usermeta WHERE meta_key IN ('_form', 'wpforms', 'forminator_form_meta', 'forminator_form');
DELETE FROM wp_termmeta WHERE meta_key IN ('_form', 'wpforms', 'forminator_form_meta', 'forminator_form');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_form', 'wpforms', 'forminator_form_meta', 'forminator_form');

