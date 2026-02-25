-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dwps_view_per_page', 'dwps_disable_default_styles', 'dwps_tab_title', 'dwps_wc_default_specs', 'dwps_options', 'dwspecs_data_migrating');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('attr_type', 'attr_default', 'attr_values', 'attr_group', 'attributes', '_groups', 'old_id', '_dwps_table', '_dwps_specification_table');
DELETE FROM wp_usermeta WHERE meta_key IN ('attr_type', 'attr_default', 'attr_values', 'attr_group', 'attributes', '_groups', 'old_id', '_dwps_table', '_dwps_specification_table');
DELETE FROM wp_termmeta WHERE meta_key IN ('attr_type', 'attr_default', 'attr_values', 'attr_group', 'attributes', '_groups', 'old_id', '_dwps_table', '_dwps_specification_table');
DELETE FROM wp_commentmeta WHERE meta_key IN ('attr_type', 'attr_default', 'attr_values', 'attr_group', 'attributes', '_groups', 'old_id', '_dwps_table', '_dwps_specification_table');

