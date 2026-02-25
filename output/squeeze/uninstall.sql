-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('squeeze_stats', 'squeeze_options', 'squeeze_do_activation_redirect', 'squeeze_bulk_path');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('squeeze_is_compressed');
DELETE FROM wp_usermeta WHERE meta_key IN ('squeeze_is_compressed');
DELETE FROM wp_termmeta WHERE meta_key IN ('squeeze_is_compressed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('squeeze_is_compressed');

