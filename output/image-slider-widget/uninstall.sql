-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('activatedewic', 'ewic-settings-automatic_update', 'classic-editor-replace', 'ewic_active_addons_lite', 'ewiclite_whats_new', 'easysliderwidget_featured_feed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ewic_meta_select_images', 'ewic_meta_list_mode', 'ewic_ignore_notice', 'ewic_meta_slide_nav', 'ewic_meta_thumbsizelt', 'ewic_meta_settings_effect', 'ewic_meta_settings_smartttl', 'ewic_meta_slide_style', 'ewic_meta_slide_auto', 'ewic_meta_slide_title', 'ewic_meta_slide_lightbox_autoslide', 'ewic_meta_slide_lightbox', 'ewic_meta_slide_lightbox_delay', 'ewic_meta_slide_delay');
DELETE FROM wp_usermeta WHERE meta_key IN ('ewic_meta_select_images', 'ewic_meta_list_mode', 'ewic_ignore_notice', 'ewic_meta_slide_nav', 'ewic_meta_thumbsizelt', 'ewic_meta_settings_effect', 'ewic_meta_settings_smartttl', 'ewic_meta_slide_style', 'ewic_meta_slide_auto', 'ewic_meta_slide_title', 'ewic_meta_slide_lightbox_autoslide', 'ewic_meta_slide_lightbox', 'ewic_meta_slide_lightbox_delay', 'ewic_meta_slide_delay');
DELETE FROM wp_termmeta WHERE meta_key IN ('ewic_meta_select_images', 'ewic_meta_list_mode', 'ewic_ignore_notice', 'ewic_meta_slide_nav', 'ewic_meta_thumbsizelt', 'ewic_meta_settings_effect', 'ewic_meta_settings_smartttl', 'ewic_meta_slide_style', 'ewic_meta_slide_auto', 'ewic_meta_slide_title', 'ewic_meta_slide_lightbox_autoslide', 'ewic_meta_slide_lightbox', 'ewic_meta_slide_lightbox_delay', 'ewic_meta_slide_delay');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ewic_meta_select_images', 'ewic_meta_list_mode', 'ewic_ignore_notice', 'ewic_meta_slide_nav', 'ewic_meta_thumbsizelt', 'ewic_meta_settings_effect', 'ewic_meta_settings_smartttl', 'ewic_meta_slide_style', 'ewic_meta_slide_auto', 'ewic_meta_slide_title', 'ewic_meta_slide_lightbox_autoslide', 'ewic_meta_slide_lightbox', 'ewic_meta_slide_lightbox_delay', 'ewic_meta_slide_delay');

