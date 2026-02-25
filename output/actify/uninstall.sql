-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('show_tooltip_in_pages', 'show_tooltip_in_posts');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('highlight_counts', 'highlight_from');
DELETE FROM wp_usermeta WHERE meta_key IN ('highlight_counts', 'highlight_from');
DELETE FROM wp_termmeta WHERE meta_key IN ('highlight_counts', 'highlight_from');
DELETE FROM wp_commentmeta WHERE meta_key IN ('highlight_counts', 'highlight_from');

