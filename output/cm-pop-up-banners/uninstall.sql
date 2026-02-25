-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cmpopfly_custom_post_type_support', 'cm_popupflyin_json_api_pinprotect', 'cm-campaign-show-allpages', 'active_sitewide_plugins', 'cmpopfly_glossaryPermalink');
DELETE FROM wp_options WHERE option_name LIKE '%-registration-skipped';
DELETE FROM wp_options WHERE option_name LIKE '%-registered';
DELETE FROM wp_options WHERE option_name LIKE '%-was-registered';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cm_advertisement_items_custom_fields', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cm_advertisement_items_custom_fields', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cm_advertisement_items_custom_fields', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cm_advertisement_items_custom_fields', '_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_fields';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_fields';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_fields';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_fields';

-- Drop Custom Tables
DROP TABLE IF EXISTS wp_CURRENT_TIMESTAMP;

