-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('elementor_cpt_support', 'auxpfo_plugin_requirements_check', 'auxels_plugin_requirements_check', 'auxshp_plugin_requirements_check', 'auxnew_plugin_requirements_check', 'auxpro_plugin_requirements_check');
DELETE FROM wp_options WHERE option_name LIKE '%_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('release-date');
DELETE FROM wp_usermeta WHERE meta_key IN ('release-date');
DELETE FROM wp_termmeta WHERE meta_key IN ('release-date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('release-date');

