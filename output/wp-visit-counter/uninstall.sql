-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp_visit_counts_by_Faizan');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp_visit_counts_by_Faizan');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp_visit_counts_by_Faizan');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp_visit_counts_by_Faizan');

