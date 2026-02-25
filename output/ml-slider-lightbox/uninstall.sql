-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('metaslider_lightbox_migration_done', 'metaslider_lightbox_general_options', 'metaslider_lightbox_content_options', 'metaslider_lightbox_manual_options', 'metaslider_lightbox_appearance_options', 'metaslider_lightbox_icon_color_migration_done', 'metaslider_lightbox_background_color_migration_done', 'ml_lightbox_options', 'metaslider_lightbox_plugin_version', 'metaslider_lightbox_plugin_path', 'metaslider_lightbox_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ml-slider_settings', 'ml-slider_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('ml-slider_settings', 'ml-slider_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('ml-slider_settings', 'ml-slider_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ml-slider_settings', 'ml-slider_url');

