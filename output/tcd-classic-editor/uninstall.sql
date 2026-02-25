-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tcdce_reset', 'tcdce_quicktag', 'tcdce_gmap', 'tcdce_toc', 'classic-editor-replace', 'classic-editor-allow-users', 'tcdce_basic');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('hide_toc', 'classic-editor-remember');
DELETE FROM wp_usermeta WHERE meta_key IN ('hide_toc', 'classic-editor-remember');
DELETE FROM wp_termmeta WHERE meta_key IN ('hide_toc', 'classic-editor-remember');
DELETE FROM wp_commentmeta WHERE meta_key IN ('hide_toc', 'classic-editor-remember');

