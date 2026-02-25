-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cf7_submission_id_COUNTER');
DELETE FROM wp_usermeta WHERE meta_key IN ('cf7_submission_id_COUNTER');
DELETE FROM wp_termmeta WHERE meta_key IN ('cf7_submission_id_COUNTER');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cf7_submission_id_COUNTER');

