-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('title', 'content', 'event', 'show_seconds', 'button_id', 'title_color', 'content_color');
DELETE FROM wp_usermeta WHERE meta_key IN ('title', 'content', 'event', 'show_seconds', 'button_id', 'title_color', 'content_color');
DELETE FROM wp_termmeta WHERE meta_key IN ('title', 'content', 'event', 'show_seconds', 'button_id', 'title_color', 'content_color');
DELETE FROM wp_commentmeta WHERE meta_key IN ('title', 'content', 'event', 'show_seconds', 'button_id', 'title_color', 'content_color');

