-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ltpoc_api_key', 'ltpoc_relevance_minimum', 'ltpoc_auto_fetch', 'ltpoc_flickrLicenseInfo', 'ltpoc_privacy_prefs', 'ltpoc_tag_types');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ltpoc_metadata', 'ltpoc_tag_data', 'ltpoc_commit_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('ltpoc_metadata', 'ltpoc_tag_data', 'ltpoc_commit_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('ltpoc_metadata', 'ltpoc_tag_data', 'ltpoc_commit_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ltpoc_metadata', 'ltpoc_tag_data', 'ltpoc_commit_id');

