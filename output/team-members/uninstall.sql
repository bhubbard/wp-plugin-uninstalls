-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_tmm_head', '_tmm_columns', '_tmm_color', '_tmm_bio_alignment', '_tmm_piclink_beh', '_tmm_original_font', '_tmm_display_order');
DELETE FROM wp_usermeta WHERE meta_key IN ('_tmm_head', '_tmm_columns', '_tmm_color', '_tmm_bio_alignment', '_tmm_piclink_beh', '_tmm_original_font', '_tmm_display_order');
DELETE FROM wp_termmeta WHERE meta_key IN ('_tmm_head', '_tmm_columns', '_tmm_color', '_tmm_bio_alignment', '_tmm_piclink_beh', '_tmm_original_font', '_tmm_display_order');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_tmm_head', '_tmm_columns', '_tmm_color', '_tmm_bio_alignment', '_tmm_piclink_beh', '_tmm_original_font', '_tmm_display_order');

