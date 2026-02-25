-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('classic-editor-replace', 'activated_icp_plugin', 'icp_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('icp_meta_options', '_icp_gallery_link_url', '_icp_gallery_link_target');
DELETE FROM wp_usermeta WHERE meta_key IN ('icp_meta_options', '_icp_gallery_link_url', '_icp_gallery_link_target');
DELETE FROM wp_termmeta WHERE meta_key IN ('icp_meta_options', '_icp_gallery_link_url', '_icp_gallery_link_target');
DELETE FROM wp_commentmeta WHERE meta_key IN ('icp_meta_options', '_icp_gallery_link_url', '_icp_gallery_link_target');

