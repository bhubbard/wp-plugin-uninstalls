-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('falke_mdm_mappings', 'disabled_post_ids', 'lightbox_photoswipe_use_cache', 'lightbox_photoswipe_add_lazyloading');
DELETE FROM wp_options WHERE option_name LIKE '%_crop';
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE 'lightbox_photoswipe_%';

