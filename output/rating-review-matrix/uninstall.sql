-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rmatrix_force_user_login', 'rmatrix_allow_user_comments', 'rmatrix_allow_ajax_login', 'name', 'rmatrix_version', 'rmatrix_build');
DELETE FROM wp_options WHERE option_name LIKE '%_allowed';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('associated_matrix_id_', 'associated_matrix_', 'matrix_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('associated_matrix_id_', 'associated_matrix_', 'matrix_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('associated_matrix_id_', 'associated_matrix_', 'matrix_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('associated_matrix_id_', 'associated_matrix_', 'matrix_count');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_title';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_title';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_title';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_title';

