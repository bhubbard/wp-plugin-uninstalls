-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('h5p_export', 'learnpress_version', 'dirsize_cache');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_lp_attachments', '_lp_h5p_interact', '_lp_passing_grade', '_lp_info_extra_fast_query');
DELETE FROM wp_usermeta WHERE meta_key IN ('_lp_attachments', '_lp_h5p_interact', '_lp_passing_grade', '_lp_info_extra_fast_query');
DELETE FROM wp_termmeta WHERE meta_key IN ('_lp_attachments', '_lp_h5p_interact', '_lp_passing_grade', '_lp_info_extra_fast_query');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_lp_attachments', '_lp_h5p_interact', '_lp_passing_grade', '_lp_info_extra_fast_query');

