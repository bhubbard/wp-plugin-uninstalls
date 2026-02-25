-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('boorecipe-options', 'boorecipe_recipe_default_img_url', 'boorecipe_search_form_filters', 'boorecipe_uninstall_delete_options');
DELETE FROM wp_options WHERE option_name LIKE 'boorecipe_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('boorecipe_recipe_image_slider_items_attached', '_wp_page_template', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('boorecipe_recipe_image_slider_items_attached', '_wp_page_template', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('boorecipe_recipe_image_slider_items_attached', '_wp_page_template', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('boorecipe_recipe_image_slider_items_attached', '_wp_page_template', '_wp_attachment_image_alt');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%recipe_title';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%recipe_title';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%recipe_title';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%recipe_title';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dismiss_news';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dismiss_news';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dismiss_news';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dismiss_news';

