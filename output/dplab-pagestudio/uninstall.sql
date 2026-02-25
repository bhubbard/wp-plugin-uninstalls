-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pc_global_settings', 'dplab_ps_global_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_dplab_ps_part_type', '_dplab_ps_is_default', '_dplab_ps_layout_config', '_dplab_ps_layout_conditions');
DELETE FROM wp_usermeta WHERE meta_key IN ('_dplab_ps_part_type', '_dplab_ps_is_default', '_dplab_ps_layout_config', '_dplab_ps_layout_conditions');
DELETE FROM wp_termmeta WHERE meta_key IN ('_dplab_ps_part_type', '_dplab_ps_is_default', '_dplab_ps_layout_config', '_dplab_ps_layout_conditions');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_dplab_ps_part_type', '_dplab_ps_is_default', '_dplab_ps_layout_config', '_dplab_ps_layout_conditions');

