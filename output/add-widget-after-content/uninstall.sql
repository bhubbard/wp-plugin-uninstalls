-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('all_post_categories', 'all_post_types', 'all_post_formats', 'awac_priority', 'awac_styles', 'awac_extensions');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_awac_hide_widget');
DELETE FROM wp_usermeta WHERE meta_key IN ('_awac_hide_widget');
DELETE FROM wp_termmeta WHERE meta_key IN ('_awac_hide_widget');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_awac_hide_widget');

