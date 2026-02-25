-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_faq_builder_config');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_faq_builder_config');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_faq_builder_config');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_faq_builder_config');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_wp_faq_builder_html_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_wp_faq_builder_html_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_wp_faq_builder_html_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wp_faq_builder_html_%';

