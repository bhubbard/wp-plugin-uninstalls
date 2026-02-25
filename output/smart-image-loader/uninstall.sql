-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sil-meat', 'sil-lazy-load-at', 'sil-fade', 'sil-loader', 'sil-selector', 'sil-exclude', 'sil-placeholder', 'sil-refresh-resize', 'sil-refresh-scroll', 'sil-cleanup');

