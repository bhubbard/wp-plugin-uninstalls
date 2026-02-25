-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rtp_hooks');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('screen_layout_appearance_page_rtp_hooks');
DELETE FROM wp_usermeta WHERE meta_key IN ('screen_layout_appearance_page_rtp_hooks');
DELETE FROM wp_termmeta WHERE meta_key IN ('screen_layout_appearance_page_rtp_hooks');
DELETE FROM wp_commentmeta WHERE meta_key IN ('screen_layout_appearance_page_rtp_hooks');

