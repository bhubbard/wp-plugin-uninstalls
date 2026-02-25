-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xpro_cloud_templates', '_xpro_cloud_templats', 'xpro_beaver_addons_options', '_fl_builder_xpro_cloud_templates', 'xpro_cloud_transient');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_fl_builder_template_global', 'thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_fl_builder_template_global', 'thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_fl_builder_template_global', 'thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_fl_builder_template_global', 'thumbnail_id');

