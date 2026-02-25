-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_aioi_post_identifier', '_aioi_social_network', '_aioi_original_url', '_aioi_link_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_aioi_post_identifier', '_aioi_social_network', '_aioi_original_url', '_aioi_link_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_aioi_post_identifier', '_aioi_social_network', '_aioi_original_url', '_aioi_link_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_aioi_post_identifier', '_aioi_social_network', '_aioi_original_url', '_aioi_link_url');

