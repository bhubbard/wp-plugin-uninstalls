-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_shop_page_id', 'fe_plugin_do_activation_redirect', 'futurio_active_time', 'kirki_telemetry_no_consent', 'elementor_onboarded', 'kirki_notices', 'futurio_maybe_later', 'futurio_review_dismiss', 'sidebars_widgets', '_wc_needs_pages', 'woocommerce_single_image_width', 'woocommerce_thumbnail_image_width', 'woocommerce_thumbnail_cropping', 'woocommerce_thumbnail_cropping_custom_width', 'woocommerce_thumbnail_cropping_custom_height', 'elementor_disable_color_schemes', 'elementor_disable_typography_schemes', 'elementor_container_width', 'kirki_downloaded_font_files', '_wc_activation_redirect', 'kirki_googlefonts_cache', 'kirki_googlefont_names_cache', 'kirki_remote_url_contents');
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';
DELETE FROM wp_options WHERE option_name LIKE '%metabox_fields';
DELETE FROM wp_options WHERE option_name LIKE '%_prefix';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_menu_item_menu_item_parent', '_thumbnail_id', 'kirki_fa_nag_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('_menu_item_menu_item_parent', '_thumbnail_id', 'kirki_fa_nag_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('_menu_item_menu_item_parent', '_thumbnail_id', 'kirki_fa_nag_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_menu_item_menu_item_parent', '_thumbnail_id', 'kirki_fa_nag_dismissed');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'futurio_meta_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'futurio_meta_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'futurio_meta_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'futurio_meta_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%event_txn_event_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%event_txn_event_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%event_txn_event_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%event_txn_event_id';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%event_txn_pkg_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%event_txn_pkg_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%event_txn_pkg_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%event_txn_pkg_id';

