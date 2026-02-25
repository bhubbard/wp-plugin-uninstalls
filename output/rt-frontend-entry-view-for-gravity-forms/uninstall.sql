-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_rt_gf_form_id', '_rt_gf_limit', '_rt_gf_fields', '_rt_gf_sort_field', '_rt_gf_sort_direction', '_rt_gf_enable_search', '_rt_gf_filterable_fields', '_rt_gf_enable_export', '_rt_gf_enable_modal', '_rt_gf_enable_advanced_filters', '_rt_gf_enable_column_customizer', '_rt_gf_primary_color', '_rt_gf_table_header_color');
DELETE FROM wp_usermeta WHERE meta_key IN ('_rt_gf_form_id', '_rt_gf_limit', '_rt_gf_fields', '_rt_gf_sort_field', '_rt_gf_sort_direction', '_rt_gf_enable_search', '_rt_gf_filterable_fields', '_rt_gf_enable_export', '_rt_gf_enable_modal', '_rt_gf_enable_advanced_filters', '_rt_gf_enable_column_customizer', '_rt_gf_primary_color', '_rt_gf_table_header_color');
DELETE FROM wp_termmeta WHERE meta_key IN ('_rt_gf_form_id', '_rt_gf_limit', '_rt_gf_fields', '_rt_gf_sort_field', '_rt_gf_sort_direction', '_rt_gf_enable_search', '_rt_gf_filterable_fields', '_rt_gf_enable_export', '_rt_gf_enable_modal', '_rt_gf_enable_advanced_filters', '_rt_gf_enable_column_customizer', '_rt_gf_primary_color', '_rt_gf_table_header_color');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_rt_gf_form_id', '_rt_gf_limit', '_rt_gf_fields', '_rt_gf_sort_field', '_rt_gf_sort_direction', '_rt_gf_enable_search', '_rt_gf_filterable_fields', '_rt_gf_enable_export', '_rt_gf_enable_modal', '_rt_gf_enable_advanced_filters', '_rt_gf_enable_column_customizer', '_rt_gf_primary_color', '_rt_gf_table_header_color');

