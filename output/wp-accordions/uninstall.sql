-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('default_post_edit_rows');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('heading_color', 'heading_bgcolor', 'content_color', 'content_bgcolor', 'accordion_type', 'accordion_open_one', 'accordion_meta_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('heading_color', 'heading_bgcolor', 'content_color', 'content_bgcolor', 'accordion_type', 'accordion_open_one', 'accordion_meta_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('heading_color', 'heading_bgcolor', 'content_color', 'content_bgcolor', 'accordion_type', 'accordion_open_one', 'accordion_meta_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('heading_color', 'heading_bgcolor', 'content_color', 'content_bgcolor', 'accordion_type', 'accordion_open_one', 'accordion_meta_id');

