-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cmcrpr_options', 'active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%-registration-skipped';
DELETE FROM wp_options WHERE option_name LIKE '%-registered';
DELETE FROM wp_options WHERE option_name LIKE '%-was-registered';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_disable_for_page', '_cmcrpr_not_parsed', '_cmcrpr_custom_id', '_cmcrpr_disable_parsing_for_page', '_cmcrpr_disable_links_for_page', '_cmcrpr_exclude_item', '_cmcrpr_description', '_cmcrpr_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_disable_for_page', '_cmcrpr_not_parsed', '_cmcrpr_custom_id', '_cmcrpr_disable_parsing_for_page', '_cmcrpr_disable_links_for_page', '_cmcrpr_exclude_item', '_cmcrpr_description', '_cmcrpr_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_disable_for_page', '_cmcrpr_not_parsed', '_cmcrpr_custom_id', '_cmcrpr_disable_parsing_for_page', '_cmcrpr_disable_links_for_page', '_cmcrpr_exclude_item', '_cmcrpr_description', '_cmcrpr_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_disable_for_page', '_cmcrpr_not_parsed', '_cmcrpr_custom_id', '_cmcrpr_disable_parsing_for_page', '_cmcrpr_disable_links_for_page', '_cmcrpr_exclude_item', '_cmcrpr_description', '_cmcrpr_url');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_per_page';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_per_page';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_per_page';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_per_page';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

