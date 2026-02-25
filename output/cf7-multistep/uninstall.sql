-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_redmuber_item_19635969', 'ninja_forms_addons_feed', 'yeekit_addons');
DELETE FROM wp_options WHERE option_name LIKE '_redmuber_item_%';
DELETE FROM wp_options WHERE option_name LIKE 'yeekit_addons_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cf7_multistep_name', '_cf7_multistep', '_cf7_multistep_type', 'multistep_cf7_steps_next', 'multistep_cf7_steps_prev', 'multistep_cf7_steps_background', 'multistep_cf7_steps_color', 'multistep_cf7_steps_inactive_background', 'multistep_cf7t_steps_inactive', 'multistep_cf7t_steps_completed_backgound', 'multistep_cf7_steps_completed', 'multistep_cf7_steps_first', '_multistep_cf7_steps_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cf7_multistep_name', '_cf7_multistep', '_cf7_multistep_type', 'multistep_cf7_steps_next', 'multistep_cf7_steps_prev', 'multistep_cf7_steps_background', 'multistep_cf7_steps_color', 'multistep_cf7_steps_inactive_background', 'multistep_cf7t_steps_inactive', 'multistep_cf7t_steps_completed_backgound', 'multistep_cf7_steps_completed', 'multistep_cf7_steps_first', '_multistep_cf7_steps_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cf7_multistep_name', '_cf7_multistep', '_cf7_multistep_type', 'multistep_cf7_steps_next', 'multistep_cf7_steps_prev', 'multistep_cf7_steps_background', 'multistep_cf7_steps_color', 'multistep_cf7_steps_inactive_background', 'multistep_cf7t_steps_inactive', 'multistep_cf7t_steps_completed_backgound', 'multistep_cf7_steps_completed', 'multistep_cf7_steps_first', '_multistep_cf7_steps_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cf7_multistep_name', '_cf7_multistep', '_cf7_multistep_type', 'multistep_cf7_steps_next', 'multistep_cf7_steps_prev', 'multistep_cf7_steps_background', 'multistep_cf7_steps_color', 'multistep_cf7_steps_inactive_background', 'multistep_cf7t_steps_inactive', 'multistep_cf7t_steps_completed_backgound', 'multistep_cf7_steps_completed', 'multistep_cf7_steps_first', '_multistep_cf7_steps_data');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'yeeaddons_dismissed_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'yeeaddons_dismissed_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'yeeaddons_dismissed_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'yeeaddons_dismissed_%';

