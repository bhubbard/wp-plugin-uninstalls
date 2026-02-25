-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bpcmdr_per_page', 'bpcmdr_visible_columns', 'bpcmdr_meta_fields', 'wbpcmdr_meta_fields', 'wbpcmdr_visible_columns', 'wbpcmdr_per_page');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bpcmdr_visible_columns', 'wbpcmdr_visible_columns');
DELETE FROM wp_usermeta WHERE meta_key IN ('bpcmdr_visible_columns', 'wbpcmdr_visible_columns');
DELETE FROM wp_termmeta WHERE meta_key IN ('bpcmdr_visible_columns', 'wbpcmdr_visible_columns');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bpcmdr_visible_columns', 'wbpcmdr_visible_columns');

