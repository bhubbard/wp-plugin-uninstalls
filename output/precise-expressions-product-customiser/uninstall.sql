-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pepc_load_google_fonts', 'pepc_retain_uploads', 'pepc_uniform_card_layout');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pepc_enable', '_pepc_mockup_url', '_pepc_bbox_x', '_pepc_bbox_y', '_pepc_bbox_w', '_pepc_bbox_h');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pepc_enable', '_pepc_mockup_url', '_pepc_bbox_x', '_pepc_bbox_y', '_pepc_bbox_w', '_pepc_bbox_h');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pepc_enable', '_pepc_mockup_url', '_pepc_bbox_x', '_pepc_bbox_y', '_pepc_bbox_w', '_pepc_bbox_h');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pepc_enable', '_pepc_mockup_url', '_pepc_bbox_x', '_pepc_bbox_y', '_pepc_bbox_w', '_pepc_bbox_h');

