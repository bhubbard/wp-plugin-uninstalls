-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pinterest_master_system_wide', 'pinterest_master_system_wide_size_small', 'pinterest_master_system_wide_size_large', 'pinterest_master_system_wide_shape_rectangular', 'pinterest_master_system_wide_shape_circular', 'pinterest_master_system_wide_size', 'pinterest_master_system_wide_shape', 'pinterest_master_system_wide_hover', 'tsm_quote');

