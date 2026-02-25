-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcicapfw_disable_zipcode_field', 'wcicapfw_enable_fraction_field');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '_billing_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_billing_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_billing_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_billing_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_shipping_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_shipping_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_shipping_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_shipping_%';

