-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simplemag-apple-app-id', 'simplemag-google-analytics', 'simplemag-magazine-name', 'array_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('simplemag_issue');
DELETE FROM wp_usermeta WHERE meta_key IN ('simplemag_issue');
DELETE FROM wp_termmeta WHERE meta_key IN ('simplemag_issue');
DELETE FROM wp_commentmeta WHERE meta_key IN ('simplemag_issue');

