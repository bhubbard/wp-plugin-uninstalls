-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hefo_dismissed', 'hefo');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('hefo_before', 'hefo_after');
DELETE FROM wp_usermeta WHERE meta_key IN ('hefo_before', 'hefo_after');
DELETE FROM wp_termmeta WHERE meta_key IN ('hefo_before', 'hefo_after');
DELETE FROM wp_commentmeta WHERE meta_key IN ('hefo_before', 'hefo_after');

