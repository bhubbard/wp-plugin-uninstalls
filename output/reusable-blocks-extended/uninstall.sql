-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('reblex_reusable_registered_stylesheets');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('transformed_into_pattern', '_edit_last');
DELETE FROM wp_usermeta WHERE meta_key IN ('transformed_into_pattern', '_edit_last');
DELETE FROM wp_termmeta WHERE meta_key IN ('transformed_into_pattern', '_edit_last');
DELETE FROM wp_commentmeta WHERE meta_key IN ('transformed_into_pattern', '_edit_last');

