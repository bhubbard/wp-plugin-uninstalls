-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wplp_free_passes_req', 'wplp_screenshot_size', 'wplp_screenshot_refresh', 'wplp_apikey', 'wplp_grid', 'wplf_grid', 'wplp_width', 'wplf_width', 'wplpf_grid', 'wplff_grid', 'wplpf_width', 'wplff_width');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wplp_display', 'wplp_screenshot_url', 'wplp_no_update', 'wplp_media_image', 'wplp_media_fav');
DELETE FROM wp_usermeta WHERE meta_key IN ('wplp_display', 'wplp_screenshot_url', 'wplp_no_update', 'wplp_media_image', 'wplp_media_fav');
DELETE FROM wp_termmeta WHERE meta_key IN ('wplp_display', 'wplp_screenshot_url', 'wplp_no_update', 'wplp_media_image', 'wplp_media_fav');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wplp_display', 'wplp_screenshot_url', 'wplp_no_update', 'wplp_media_image', 'wplp_media_fav');

