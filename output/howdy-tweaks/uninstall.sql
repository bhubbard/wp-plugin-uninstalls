-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ht_options', 'ht_greeting');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ht_options');
DELETE FROM wp_usermeta WHERE meta_key IN ('ht_options');
DELETE FROM wp_termmeta WHERE meta_key IN ('ht_options');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ht_options');

