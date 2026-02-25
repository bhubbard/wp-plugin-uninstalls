-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('superdocs-general-settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('productId', 'superdocs-template', 'categories', 'categoryId', 'superdocs_category', 'superdocs_product', 'superdocs_edit_with_option', '_wp_page_template', '_elementor_edit_mode', '_elementor_version');
DELETE FROM wp_usermeta WHERE meta_key IN ('productId', 'superdocs-template', 'categories', 'categoryId', 'superdocs_category', 'superdocs_product', 'superdocs_edit_with_option', '_wp_page_template', '_elementor_edit_mode', '_elementor_version');
DELETE FROM wp_termmeta WHERE meta_key IN ('productId', 'superdocs-template', 'categories', 'categoryId', 'superdocs_category', 'superdocs_product', 'superdocs_edit_with_option', '_wp_page_template', '_elementor_edit_mode', '_elementor_version');
DELETE FROM wp_commentmeta WHERE meta_key IN ('productId', 'superdocs-template', 'categories', 'categoryId', 'superdocs_category', 'superdocs_product', 'superdocs_edit_with_option', '_wp_page_template', '_elementor_edit_mode', '_elementor_version');

