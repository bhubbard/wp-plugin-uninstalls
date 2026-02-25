-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lazy_load_responsive_images_disabled_classes', 'lazy_load_responsive_images_additional_filters', 'lazy_load_responsive_images_enable_for_iframes', 'lazy_load_responsive_images_native_loading_plugin', 'lazy_load_responsive_images_unveilhooks_plugin', 'lazy_load_responsive_images_enable_for_background_images', 'lazy_load_responsive_images_enable_for_videos', 'lazy_load_responsive_images_enable_for_audios', 'lazy_load_responsive_images_loading_spinner', 'lazy_load_responsive_images_loading_spinner_color', 'lazy_load_responsive_images_granular_disable_option', 'lazy_load_responsive_images_process_complete_markup', 'lazy_load_responsive_images_lazysizes_config');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lazy_load_responsive_images_disabled');
DELETE FROM wp_usermeta WHERE meta_key IN ('lazy_load_responsive_images_disabled');
DELETE FROM wp_termmeta WHERE meta_key IN ('lazy_load_responsive_images_disabled');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lazy_load_responsive_images_disabled');

