-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('flex-slide-title', 'flex-slide-url', 'flex-slide-desc', 'slide_attachmenid', 'nav_controls', 'pager_controls', 'interval', 'hover_pass', 'show_title', 'show_description', 'show_slide_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('flex-slide-title', 'flex-slide-url', 'flex-slide-desc', 'slide_attachmenid', 'nav_controls', 'pager_controls', 'interval', 'hover_pass', 'show_title', 'show_description', 'show_slide_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('flex-slide-title', 'flex-slide-url', 'flex-slide-desc', 'slide_attachmenid', 'nav_controls', 'pager_controls', 'interval', 'hover_pass', 'show_title', 'show_description', 'show_slide_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('flex-slide-title', 'flex-slide-url', 'flex-slide-desc', 'slide_attachmenid', 'nav_controls', 'pager_controls', 'interval', 'hover_pass', 'show_title', 'show_description', 'show_slide_url');

