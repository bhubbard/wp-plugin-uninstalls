-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ppc_cpt_checklist_data', 'ppc_post_types_to_display', 'ppc_error_level', 'ppc_checklist_data', '_ppc_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ppc_meta_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ppc_meta_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ppc_meta_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ppc_meta_key');

