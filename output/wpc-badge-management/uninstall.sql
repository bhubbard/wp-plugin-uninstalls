-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcbm_settings', 'wpclever_plugins', 'wpcbm_best_selling_products');
DELETE FROM wp_options WHERE option_name LIKE 'wpcbm_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('position_archive', 'position_single', 'position_quickview', 'wpcbm_activate', 'position', 'style', 'text', 'link', 'link_blank', 'tooltip', 'tooltip_position', 'extra_class', 'order', 'background_color', 'border_color', 'box_shadow', 'text_color', 'apply', 'new', 'products', 'categories', 'tags', 'terms', 'roles', 'timer', 'image', 'conditionals', 'wpcbm_type', 'wpcbm_badges');
DELETE FROM wp_usermeta WHERE meta_key IN ('position_archive', 'position_single', 'position_quickview', 'wpcbm_activate', 'position', 'style', 'text', 'link', 'link_blank', 'tooltip', 'tooltip_position', 'extra_class', 'order', 'background_color', 'border_color', 'box_shadow', 'text_color', 'apply', 'new', 'products', 'categories', 'tags', 'terms', 'roles', 'timer', 'image', 'conditionals', 'wpcbm_type', 'wpcbm_badges');
DELETE FROM wp_termmeta WHERE meta_key IN ('position_archive', 'position_single', 'position_quickview', 'wpcbm_activate', 'position', 'style', 'text', 'link', 'link_blank', 'tooltip', 'tooltip_position', 'extra_class', 'order', 'background_color', 'border_color', 'box_shadow', 'text_color', 'apply', 'new', 'products', 'categories', 'tags', 'terms', 'roles', 'timer', 'image', 'conditionals', 'wpcbm_type', 'wpcbm_badges');
DELETE FROM wp_commentmeta WHERE meta_key IN ('position_archive', 'position_single', 'position_quickview', 'wpcbm_activate', 'position', 'style', 'text', 'link', 'link_blank', 'tooltip', 'tooltip_position', 'extra_class', 'order', 'background_color', 'border_color', 'box_shadow', 'text_color', 'apply', 'new', 'products', 'categories', 'tags', 'terms', 'roles', 'timer', 'image', 'conditionals', 'wpcbm_type', 'wpcbm_badges');

