-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tma_webtools_option', 'tma_webtools_option_targeting', 'tma-webtools-Integrations', 'tma-webtools-events', 'tma_webtools_option_wc');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tma_segment_editor_unit', 'tma_segment_editor_count', 'tma_segment_editor');
DELETE FROM wp_usermeta WHERE meta_key IN ('tma_segment_editor_unit', 'tma_segment_editor_count', 'tma_segment_editor');
DELETE FROM wp_termmeta WHERE meta_key IN ('tma_segment_editor_unit', 'tma_segment_editor_count', 'tma_segment_editor');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tma_segment_editor_unit', 'tma_segment_editor_count', 'tma_segment_editor');

