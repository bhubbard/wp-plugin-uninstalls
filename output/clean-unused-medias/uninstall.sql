-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lnjcm_medias_in_content_index', 'lnjcm_medias_in_content_ids', 'lnjcm_medias_in_postmeta_ids', 'lnjcm_medias_in_usermeta_ids', 'lnjcm_medias_in_option_ids', 'lnjcm_medias_in_content_last_check', 'lnjcm_medias_in_content_pause', 'lnjcm_medias_in_content_completed', 'lnjcm_medias_in_content_completed_date', 'lnjcm_medias_in_content_processing');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lnjcm_used_in');
DELETE FROM wp_usermeta WHERE meta_key IN ('lnjcm_used_in');
DELETE FROM wp_termmeta WHERE meta_key IN ('lnjcm_used_in');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lnjcm_used_in');

