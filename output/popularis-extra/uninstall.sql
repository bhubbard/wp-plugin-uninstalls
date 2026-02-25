-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('popularis_extra_active_time', 'popularis_extra_review_dismiss', 'popularis_extra_maybe_later', 'popularis_extra_active_pro_time', 'popularis_extra_active_pro_time_verse', 'sidebars_widgets', '_wc_needs_pages', 'woocommerce_single_image_width', 'woocommerce_thumbnail_image_width', 'woocommerce_thumbnail_cropping', 'woocommerce_thumbnail_cropping_custom_width', 'woocommerce_thumbnail_cropping_custom_height', 'elementor_container_width', 'elementor_experiment-container', 'popularis_wizard', 'automatic_2nd_notice', '2nd_notice', 'popularis_plugin_do_activation_redirect', '_wc_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_menu_item_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_menu_item_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_menu_item_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_menu_item_%';

