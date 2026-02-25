-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('redshape_easylabels_options', 'content_labels_options', 'redshape_easylabels_storage_upgraded', 'settings_errors', 'redshape_easylabels_version_check');
DELETE FROM wp_options WHERE option_name LIKE 'redshape_easylabels_filter_order_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_content_note', '_content_label', '_content_labels');
DELETE FROM wp_usermeta WHERE meta_key IN ('_content_note', '_content_label', '_content_labels');
DELETE FROM wp_termmeta WHERE meta_key IN ('_content_note', '_content_label', '_content_labels');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_content_note', '_content_label', '_content_labels');

