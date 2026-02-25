-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('selected_attribute', 'custom_image_size_width', 'custom_image_size_height', 'default_image', 'ced_only_logo', 'ced_multi_enable_search', 'ced_multi_exclude_site', 'site_list_order', 'hidesite');

