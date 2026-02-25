-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('classic-editor-replace', 'gifeed_activation_init', 'ghozylab_instagram_feed_options', 'gifeed_featured_feed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gifeed_meta_ids_tags', 'gifeed_meta_feed_format');
DELETE FROM wp_usermeta WHERE meta_key IN ('gifeed_meta_ids_tags', 'gifeed_meta_feed_format');
DELETE FROM wp_termmeta WHERE meta_key IN ('gifeed_meta_ids_tags', 'gifeed_meta_feed_format');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gifeed_meta_ids_tags', 'gifeed_meta_feed_format');

