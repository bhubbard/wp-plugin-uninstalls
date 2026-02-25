-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mpp-hide-intro-title', 'mpp-comments-on-page', 'mpp-continue-or-prev-next', 'mpp-disable-standard-pagination', 'mpp-toc-only-on-the-first-page', 'mpp-toc-position', 'mpp-toc-row-labels', 'mpp-hide-toc-header', 'mpp-comments-toc-link', '_mpp-rewrite-title-priority', '_mpp-rewrite-content-priority', 'mpp-disable-tinymce-buttons', '_mpp-postmeta-built', 'classic-editor-replace', '_mpp_db_version', 'multipage');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mpp_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mpp_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mpp_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mpp_data');

