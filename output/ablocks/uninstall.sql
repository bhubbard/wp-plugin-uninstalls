-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ablocks_frontend_dashboard_sub_pages', 'ablocks_first_install_time', 'insightsforwp_sent_data', 'ablocks_need_activation_redirect', 'ablocks_has_required_block_attribute_migration', 'sidebars_widgets', 'ablocks_version', 'ablocks_fonts');
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ablocks_tb_template_type', 'ablocks_dismiss_offer_notice', '_thumbnail_id', '_wp_attachment_image_alt', 'ablock_page_type', 'description', 'first_name', 'last_name', '_wp_attachment_is_custom_header', '_ablocks_demo_ref', '_menu_item_menu_item_parent');
DELETE FROM wp_usermeta WHERE meta_key IN ('ablocks_tb_template_type', 'ablocks_dismiss_offer_notice', '_thumbnail_id', '_wp_attachment_image_alt', 'ablock_page_type', 'description', 'first_name', 'last_name', '_wp_attachment_is_custom_header', '_ablocks_demo_ref', '_menu_item_menu_item_parent');
DELETE FROM wp_termmeta WHERE meta_key IN ('ablocks_tb_template_type', 'ablocks_dismiss_offer_notice', '_thumbnail_id', '_wp_attachment_image_alt', 'ablock_page_type', 'description', 'first_name', 'last_name', '_wp_attachment_is_custom_header', '_ablocks_demo_ref', '_menu_item_menu_item_parent');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ablocks_tb_template_type', 'ablocks_dismiss_offer_notice', '_thumbnail_id', '_wp_attachment_image_alt', 'ablock_page_type', 'description', 'first_name', 'last_name', '_wp_attachment_is_custom_header', '_ablocks_demo_ref', '_menu_item_menu_item_parent');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ablocks_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ablocks_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ablocks_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ablocks_%';

