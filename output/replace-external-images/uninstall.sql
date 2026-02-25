-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_replexim_image_urls', 'replexim_dismiss_global_addon_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('_replexim_image_urls', 'replexim_dismiss_global_addon_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('_replexim_image_urls', 'replexim_dismiss_global_addon_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_replexim_image_urls', 'replexim_dismiss_global_addon_notice');

