-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('svsfc_feedback_positive', 'svsfc_feedback_negative');
DELETE FROM wp_usermeta WHERE meta_key IN ('svsfc_feedback_positive', 'svsfc_feedback_negative');
DELETE FROM wp_termmeta WHERE meta_key IN ('svsfc_feedback_positive', 'svsfc_feedback_negative');
DELETE FROM wp_commentmeta WHERE meta_key IN ('svsfc_feedback_positive', 'svsfc_feedback_negative');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'svsfc_feedback_voted_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'svsfc_feedback_voted_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'svsfc_feedback_voted_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'svsfc_feedback_voted_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'svsfc_feedback_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'svsfc_feedback_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'svsfc_feedback_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'svsfc_feedback_%';

