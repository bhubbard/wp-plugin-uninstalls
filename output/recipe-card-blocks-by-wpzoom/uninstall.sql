-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpzoom_rcb_do_activation_redirect', 'wpzoom_search_recipes_cards_time', 'wpzoom_credits', 'wpzoom_import_wprm_recipes', 'wpzoom_rcb_search_recipe_box', 'wpzoom_rcb_welcome_banner', 'reblex_reusable_registered_stylesheets', 'wpzoom_rcb_plugin_user_data');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpzoom_rcb_parent_post_id', 'rcb-recipe-slug-dismissed', '_elementor_data', '_wpzoom_rcb_used_in', '_wpzoom_rcb_has_parent', 'wpzoom_rcb_dismiss_black_friday_banner', 'wpzoom_rcb_imported_wprm_data', '_wp_attachment_image_alt', 'tp_pinterest_text');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpzoom_rcb_parent_post_id', 'rcb-recipe-slug-dismissed', '_elementor_data', '_wpzoom_rcb_used_in', '_wpzoom_rcb_has_parent', 'wpzoom_rcb_dismiss_black_friday_banner', 'wpzoom_rcb_imported_wprm_data', '_wp_attachment_image_alt', 'tp_pinterest_text');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpzoom_rcb_parent_post_id', 'rcb-recipe-slug-dismissed', '_elementor_data', '_wpzoom_rcb_used_in', '_wpzoom_rcb_has_parent', 'wpzoom_rcb_dismiss_black_friday_banner', 'wpzoom_rcb_imported_wprm_data', '_wp_attachment_image_alt', 'tp_pinterest_text');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpzoom_rcb_parent_post_id', 'rcb-recipe-slug-dismissed', '_elementor_data', '_wpzoom_rcb_used_in', '_wpzoom_rcb_has_parent', 'wpzoom_rcb_dismiss_black_friday_banner', 'wpzoom_rcb_imported_wprm_data', '_wp_attachment_image_alt', 'tp_pinterest_text');

