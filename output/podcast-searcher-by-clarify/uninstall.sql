-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('clarify_apikey');
DELETE FROM wp_options WHERE option_name LIKE 'clarify-search-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_clarify_bundle_id', 'enclosure', '_clarify_track_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_clarify_bundle_id', 'enclosure', '_clarify_track_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_clarify_bundle_id', 'enclosure', '_clarify_track_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_clarify_bundle_id', 'enclosure', '_clarify_track_id');

