-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('MultipleSidebarsHome', 'MultipleSidebarsSearch', 'MultipleSidebarsPostDefault', 'MultipleSidebarsPageDefault', 'MultipleSidebarsCategoryDefault');
DELETE FROM wp_options WHERE option_name LIKE 'MultipleSidebars%';
DELETE FROM wp_options WHERE option_name LIKE 'MultipleSidebars_taxonomy_sidebars_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('MultipleSidebars');
DELETE FROM wp_usermeta WHERE meta_key IN ('MultipleSidebars');
DELETE FROM wp_termmeta WHERE meta_key IN ('MultipleSidebars');
DELETE FROM wp_commentmeta WHERE meta_key IN ('MultipleSidebars');

