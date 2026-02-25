-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dds_sidebars', 'dds_target_widget_area', 'dds_area_for_post_types');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dds_widget_area');
DELETE FROM wp_usermeta WHERE meta_key IN ('dds_widget_area');
DELETE FROM wp_termmeta WHERE meta_key IN ('dds_widget_area');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dds_widget_area');

