-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('animation', 'arrow', 'pager', 'hover_pass', 'width', 'height', 'interval', 'desc_resp', 'slide_attachmenid', 'fade-slide-title', 'fade-slide-url', 'fade-slide-desc');
DELETE FROM wp_usermeta WHERE meta_key IN ('animation', 'arrow', 'pager', 'hover_pass', 'width', 'height', 'interval', 'desc_resp', 'slide_attachmenid', 'fade-slide-title', 'fade-slide-url', 'fade-slide-desc');
DELETE FROM wp_termmeta WHERE meta_key IN ('animation', 'arrow', 'pager', 'hover_pass', 'width', 'height', 'interval', 'desc_resp', 'slide_attachmenid', 'fade-slide-title', 'fade-slide-url', 'fade-slide-desc');
DELETE FROM wp_commentmeta WHERE meta_key IN ('animation', 'arrow', 'pager', 'hover_pass', 'width', 'height', 'interval', 'desc_resp', 'slide_attachmenid', 'fade-slide-title', 'fade-slide-url', 'fade-slide-desc');

