-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('j2e_pending_articles', 'j2e_imported_articles', 'wc_attribute_taxonomies');
DELETE FROM wp_options WHERE option_name LIKE 'j2w_connection_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('joomla_article_id', '_elementor_data', '_elementor_edit_mode', '_wp_page_template', '_product_attributes', '_wp_attachment_metadata', 'rating');
DELETE FROM wp_usermeta WHERE meta_key IN ('joomla_article_id', '_elementor_data', '_elementor_edit_mode', '_wp_page_template', '_product_attributes', '_wp_attachment_metadata', 'rating');
DELETE FROM wp_termmeta WHERE meta_key IN ('joomla_article_id', '_elementor_data', '_elementor_edit_mode', '_wp_page_template', '_product_attributes', '_wp_attachment_metadata', 'rating');
DELETE FROM wp_commentmeta WHERE meta_key IN ('joomla_article_id', '_elementor_data', '_elementor_edit_mode', '_wp_page_template', '_product_attributes', '_wp_attachment_metadata', 'rating');

