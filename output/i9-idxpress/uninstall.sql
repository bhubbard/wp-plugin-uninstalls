-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zillow_screen_name', 'rewrite_rules', 'i9-idx-key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('i9idxpress-assembled-url');
DELETE FROM wp_usermeta WHERE meta_key IN ('i9idxpress-assembled-url');
DELETE FROM wp_termmeta WHERE meta_key IN ('i9idxpress-assembled-url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('i9idxpress-assembled-url');

