-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('embedder_scrollmethod', 'embedder_scrolling', 'embedder_class', 'embedder_border', 'embedder_style');

