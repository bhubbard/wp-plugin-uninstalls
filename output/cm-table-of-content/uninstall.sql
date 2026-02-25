-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'cmtoc_options', 'cmtoc_table_of_contentsOnlySingle', 'cmtoc_table_of_contentOnMainQuery', 'cmtoc_table_of_contentsHeaderDescription', 'cmtoc_table_of_contentsLevel0Tag', 'cmtoc_table_of_contentsLevel0Class', 'cmtoc_table_of_contentsLevel0Id', 'cmtoc_table_of_contentsLevel1Tag', 'cmtoc_table_of_contentsLevel1Class', 'cmtoc_table_of_contentsLevel1Id', 'cmtoc_table_of_contentsLevel2Tag', 'cmtoc_table_of_contentsLevel2Class', 'cmtoc_table_of_contentsLevel2Id', 'cmtoc_table_of_contentsLevel3Tag', 'cmtoc_table_of_contentsLevel3Class', 'cmtoc_table_of_contentsLevel3Id', 'cmtoc_table_of_contentsLevel4Tag', 'cmtoc_table_of_contentsLevel4Class', 'cmtoc_table_of_contentsLevel4Id', 'cmtoc_table_of_contentsLevel5Tag', 'cmtoc_table_of_contentsLevel5Class', 'cmtoc_table_of_contentsLevel5Id');
DELETE FROM wp_options WHERE option_name LIKE '%-registration-skipped';
DELETE FROM wp_options WHERE option_name LIKE '%-registered';
DELETE FROM wp_options WHERE option_name LIKE '%-was-registered';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_table_of_content_disable_for_page', '_table_of_content_disable_table_of_content_for_page', 'edit_table_of_content_per_page', '_cmtoc_use_custom_selectors', '_cmtoc_custom_selectors', '_table_of_content_auto_shortcode_disable');
DELETE FROM wp_usermeta WHERE meta_key IN ('_table_of_content_disable_for_page', '_table_of_content_disable_table_of_content_for_page', 'edit_table_of_content_per_page', '_cmtoc_use_custom_selectors', '_cmtoc_custom_selectors', '_table_of_content_auto_shortcode_disable');
DELETE FROM wp_termmeta WHERE meta_key IN ('_table_of_content_disable_for_page', '_table_of_content_disable_table_of_content_for_page', 'edit_table_of_content_per_page', '_cmtoc_use_custom_selectors', '_cmtoc_custom_selectors', '_table_of_content_auto_shortcode_disable');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_table_of_content_disable_for_page', '_table_of_content_disable_table_of_content_for_page', 'edit_table_of_content_per_page', '_cmtoc_use_custom_selectors', '_cmtoc_custom_selectors', '_table_of_content_auto_shortcode_disable');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

