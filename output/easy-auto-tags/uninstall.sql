-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('min_ch', 'repeat_ch', 'exclude_word');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_results_tags');
DELETE FROM wp_usermeta WHERE meta_key IN ('_results_tags');
DELETE FROM wp_termmeta WHERE meta_key IN ('_results_tags');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_results_tags');

