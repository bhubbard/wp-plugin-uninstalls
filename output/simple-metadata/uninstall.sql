-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smd_locations', 'smd_net_locations', 'smd_website_blog_type', 'smd_hide_metadata_dates', 'smd_disable_frontmatter_type', 'smd_disable_backmatter_type', 'smd_organization_logo_image_id', 'smd_organization_name', '_ext_source_id', 'wpseo_titles', 'autodescription-site-settings', 'smd_logo_image_id', 'smdre_is_translated_from', 'smd_net_sites_type', 'smd_net_hide_metadata_dates', 'smde_locations', 'smdlc_locations', 'smdan_locations');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('smd_googleImage_id', 'smd_page_type', 'smd_post_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('smd_googleImage_id', 'smd_page_type', 'smd_post_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('smd_googleImage_id', 'smd_page_type', 'smd_post_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('smd_googleImage_id', 'smd_page_type', 'smd_post_type');

