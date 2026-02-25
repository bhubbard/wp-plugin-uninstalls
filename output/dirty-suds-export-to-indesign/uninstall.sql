-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dirtysuds_export_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('story_print_headline', 'sub_head', 'story_production_notes', 'story_captions');
DELETE FROM wp_usermeta WHERE meta_key IN ('story_print_headline', 'sub_head', 'story_production_notes', 'story_captions');
DELETE FROM wp_termmeta WHERE meta_key IN ('story_print_headline', 'sub_head', 'story_production_notes', 'story_captions');
DELETE FROM wp_commentmeta WHERE meta_key IN ('story_print_headline', 'sub_head', 'story_production_notes', 'story_captions');

