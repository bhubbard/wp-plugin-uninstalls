-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('blue-billywig-api-secret', 'blue-billywig-api-id', 'blue-billywig-publication', 'blue-billywig-playout', 'blue-billywig-playout-video-status', 'blue-billywig-embed', 'blue-billywig-page-count', 'bb_get_playout_list', 'blue-billywig-m-status');

