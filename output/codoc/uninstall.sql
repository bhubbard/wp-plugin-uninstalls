-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tadv_admin_settings', 'codoc_api_notification');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('codoc_shortcode_evacuations', 'codoc_entry_code', 'codoc_saved_post_id', 'codoc_post_thumbnail_invoking_entry_code');
DELETE FROM wp_usermeta WHERE meta_key IN ('codoc_shortcode_evacuations', 'codoc_entry_code', 'codoc_saved_post_id', 'codoc_post_thumbnail_invoking_entry_code');
DELETE FROM wp_termmeta WHERE meta_key IN ('codoc_shortcode_evacuations', 'codoc_entry_code', 'codoc_saved_post_id', 'codoc_post_thumbnail_invoking_entry_code');
DELETE FROM wp_commentmeta WHERE meta_key IN ('codoc_shortcode_evacuations', 'codoc_entry_code', 'codoc_saved_post_id', 'codoc_post_thumbnail_invoking_entry_code');

