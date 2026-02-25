-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hide_readmore_link_pages', 'hide_all_readmore_links', 'use_single_images_folder', 'use_compressed_images', 'load_plugin_styles');

