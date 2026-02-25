-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xbs_analytics_code', 'xbs_base_keywords', 'xbs_base_description');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_xbs_meta_keywords_field', '_xbs_meta_description_field');
DELETE FROM wp_usermeta WHERE meta_key IN ('_xbs_meta_keywords_field', '_xbs_meta_description_field');
DELETE FROM wp_termmeta WHERE meta_key IN ('_xbs_meta_keywords_field', '_xbs_meta_description_field');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_xbs_meta_keywords_field', '_xbs_meta_description_field');

