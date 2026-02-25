-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simple_product_tabs_settings', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_license_key';
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%-dont-check-license';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sptb_conditions_category', '_sptb_display_tab_globally', '_sptb_tab_icon');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sptb_conditions_category', '_sptb_display_tab_globally', '_sptb_tab_icon');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sptb_conditions_category', '_sptb_display_tab_globally', '_sptb_tab_icon');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sptb_conditions_category', '_sptb_display_tab_globally', '_sptb_tab_icon');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_sptb_override_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_sptb_override_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_sptb_override_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_sptb_override_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_sptb_field_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_sptb_field_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_sptb_field_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_sptb_field_%';

