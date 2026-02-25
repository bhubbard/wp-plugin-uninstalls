-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woomnibus_option', 'new_option_name', 'some_other_option', 'option_etc');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('price', 'date');
DELETE FROM wp_usermeta WHERE meta_key IN ('price', 'date');
DELETE FROM wp_termmeta WHERE meta_key IN ('price', 'date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('price', 'date');

