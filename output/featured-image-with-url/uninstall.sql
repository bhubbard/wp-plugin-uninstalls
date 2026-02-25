-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('harikrutfiwu_migrated_from_fibu', 'harikrutfiwu_migration_notice_dismissed', 'knawatfibu_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_knawatfibu_url', '_knawatfibu_alt', '_knawatfibu_wcgallary', 'fb_product_image');
DELETE FROM wp_usermeta WHERE meta_key IN ('_knawatfibu_url', '_knawatfibu_alt', '_knawatfibu_wcgallary', 'fb_product_image');
DELETE FROM wp_termmeta WHERE meta_key IN ('_knawatfibu_url', '_knawatfibu_alt', '_knawatfibu_wcgallary', 'fb_product_image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_knawatfibu_url', '_knawatfibu_alt', '_knawatfibu_wcgallary', 'fb_product_image');

