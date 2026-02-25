-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('widget_block', 'rbea_custom_css_on', 'rbea_blocks', 'rbea_global_inherit_from_theme', 'rbea_global_inherit_from_theme_last_changed', 'rbea_default_content_width', 'rbea_default_container_gap', 'rbea_default_container_padding', 'rbea_auto_block_recovery', 'rbea_template_library_button_on', 'total-responsive-sites-data', 'responsive_block_editor_addons_review_notice_dismissed', 'responsive_block_editor_addons_review_notice', 'responsive_block_editor_addons_intial_timeout', 'responsive_block_editor_addons_template_library_used', 'rbea_blocks_data_update', 'wc_am_client_responsive_addons_pro_activated', 'last_xml_export_checksums', 'reads_app_settings', 'total-responsive-site-pages', 'responsive_block_editor_addons_activation_redirect', 'responsive_block_editor_addons_intial_timeout', 'responsive_block_editor_addons_timeout');
DELETE FROM wp_options WHERE option_name LIKE 'rbea-instagram-api_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_rbea_templates_image_hash', 'rbea_template_favorites', '_rba_category');
DELETE FROM wp_usermeta WHERE meta_key IN ('_rbea_templates_image_hash', 'rbea_template_favorites', '_rba_category');
DELETE FROM wp_termmeta WHERE meta_key IN ('_rbea_templates_image_hash', 'rbea_template_favorites', '_rba_category');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_rbea_templates_image_hash', 'rbea_template_favorites', '_rba_category');

