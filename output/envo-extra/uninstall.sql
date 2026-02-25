-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('et_fc', 'woocommerce_shop_page_id', 'envo_plugin_do_activation_redirect', 'classic-editor-replace', 'kirki_downloaded_font_files', 'envo_extra_actions_dismiss', 'envothemes_active_time', 'envothemes_active_pro_time', 'envothemes_demo_import_url', 'envothemes_activation_redirect', 'envothemes_maybe_later', 'envothemes_review_dismiss', 'elementor_onboarded', 'active_envo_one_time', 'sidebars_widgets', '_wc_needs_pages', 'woocommerce_single_image_width', 'woocommerce_thumbnail_image_width', 'woocommerce_thumbnail_cropping', 'woocommerce_thumbnail_cropping_custom_width', 'woocommerce_thumbnail_cropping_custom_height', 'elementor_container_width', 'elementor_experiment-container', 'kirki_googlefonts_cache', 'kirki_googlefont_names_cache', 'kirki_remote_url_contents', '_wc_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE '%-version';
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('envo_extra_hide_title', 'envo_extra_hide_sidebar', 'envo_extra_transparent_header', 'envo_extra_header_text_color', 'kirki_fa_nag_dismissed', '_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('envo_extra_hide_title', 'envo_extra_hide_sidebar', 'envo_extra_transparent_header', 'envo_extra_header_text_color', 'kirki_fa_nag_dismissed', '_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('envo_extra_hide_title', 'envo_extra_hide_sidebar', 'envo_extra_transparent_header', 'envo_extra_header_text_color', 'kirki_fa_nag_dismissed', '_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('envo_extra_hide_title', 'envo_extra_hide_sidebar', 'envo_extra_transparent_header', 'envo_extra_header_text_color', 'kirki_fa_nag_dismissed', '_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'envo_extra_meta_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'envo_extra_meta_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'envo_extra_meta_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'envo_extra_meta_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice_ignore';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice_ignore';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice_ignore';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice_ignore';

