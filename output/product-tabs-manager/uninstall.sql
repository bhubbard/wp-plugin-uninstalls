-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ptabsm_ddefault_product_tabs', 'ptabsm_installed', 'ptabsm_is_migrated', 'active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_tab';
DELETE FROM wp_options WHERE option_name LIKE '%_flash_messages';
DELETE FROM wp_options WHERE option_name LIKE '_transient_%';
DELETE FROM wp_options WHERE option_name LIKE '%_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ptabsm_tab_key', '_ptabsm_tab_visible_type', '_ptabsm_excluded_products', '_ptabsm_excluded_categories', '_ptabsm_tab_priority', '_ptabsm_tab_specific_products', '_ptabsm_tab_specific_categories', 'ptabsm_tab_content', 'ptabsm_tab_is_disable', 'ptabsm_tab_visible_type', '_ptabsm_tab_content_type', 'ptabsm_tab_specific_categories');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ptabsm_tab_key', '_ptabsm_tab_visible_type', '_ptabsm_excluded_products', '_ptabsm_excluded_categories', '_ptabsm_tab_priority', '_ptabsm_tab_specific_products', '_ptabsm_tab_specific_categories', 'ptabsm_tab_content', 'ptabsm_tab_is_disable', 'ptabsm_tab_visible_type', '_ptabsm_tab_content_type', 'ptabsm_tab_specific_categories');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ptabsm_tab_key', '_ptabsm_tab_visible_type', '_ptabsm_excluded_products', '_ptabsm_excluded_categories', '_ptabsm_tab_priority', '_ptabsm_tab_specific_products', '_ptabsm_tab_specific_categories', 'ptabsm_tab_content', 'ptabsm_tab_is_disable', 'ptabsm_tab_visible_type', '_ptabsm_tab_content_type', 'ptabsm_tab_specific_categories');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ptabsm_tab_key', '_ptabsm_tab_visible_type', '_ptabsm_excluded_products', '_ptabsm_excluded_categories', '_ptabsm_tab_priority', '_ptabsm_tab_specific_products', '_ptabsm_tab_specific_categories', 'ptabsm_tab_content', 'ptabsm_tab_is_disable', 'ptabsm_tab_visible_type', '_ptabsm_tab_content_type', 'ptabsm_tab_specific_categories');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_ptabsm_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_ptabsm_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_ptabsm_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ptabsm_%';

