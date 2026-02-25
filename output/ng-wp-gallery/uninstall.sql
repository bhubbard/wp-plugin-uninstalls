-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mwrpg_images', 'mwrp_gallery_layout', 'mwrp_gallery_border', 'mwrp_gallery_border_radius');
DELETE FROM wp_usermeta WHERE meta_key IN ('mwrpg_images', 'mwrp_gallery_layout', 'mwrp_gallery_border', 'mwrp_gallery_border_radius');
DELETE FROM wp_termmeta WHERE meta_key IN ('mwrpg_images', 'mwrp_gallery_layout', 'mwrp_gallery_border', 'mwrp_gallery_border_radius');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mwrpg_images', 'mwrp_gallery_layout', 'mwrp_gallery_border', 'mwrp_gallery_border_radius');

