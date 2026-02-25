-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('narrative_last_request', 'narratibe_update_secret');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('narrative_post_script', '_narrative_meta_title', '_narrative_meta_description', '_narrative_meta_keywords');
DELETE FROM wp_usermeta WHERE meta_key IN ('narrative_post_script', '_narrative_meta_title', '_narrative_meta_description', '_narrative_meta_keywords');
DELETE FROM wp_termmeta WHERE meta_key IN ('narrative_post_script', '_narrative_meta_title', '_narrative_meta_description', '_narrative_meta_keywords');
DELETE FROM wp_commentmeta WHERE meta_key IN ('narrative_post_script', '_narrative_meta_title', '_narrative_meta_description', '_narrative_meta_keywords');

