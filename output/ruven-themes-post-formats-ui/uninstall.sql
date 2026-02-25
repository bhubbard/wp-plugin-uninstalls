-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rtpfui_disable_metabox_link', 'rtpfui_disable_metabox_quote', 'rtpfui_disable_metabox_video', 'rtpfui_disable_metabox_audio');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template');

