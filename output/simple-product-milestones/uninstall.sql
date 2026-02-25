-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_milestone-complex', '_milestone_color', '_milestone_bg_color', '_milestone_uncompleted_color', '_uncompleted_text_color', '_milestone_starting_number', '_milestone_pulse', '_milestone_orientation', '_milestone_line');
DELETE FROM wp_usermeta WHERE meta_key IN ('_milestone-complex', '_milestone_color', '_milestone_bg_color', '_milestone_uncompleted_color', '_uncompleted_text_color', '_milestone_starting_number', '_milestone_pulse', '_milestone_orientation', '_milestone_line');
DELETE FROM wp_termmeta WHERE meta_key IN ('_milestone-complex', '_milestone_color', '_milestone_bg_color', '_milestone_uncompleted_color', '_uncompleted_text_color', '_milestone_starting_number', '_milestone_pulse', '_milestone_orientation', '_milestone_line');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_milestone-complex', '_milestone_color', '_milestone_bg_color', '_milestone_uncompleted_color', '_uncompleted_text_color', '_milestone_starting_number', '_milestone_pulse', '_milestone_orientation', '_milestone_line');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_step_name';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_step_name';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_step_name';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_step_name';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_step_description';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_step_description';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_step_description';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_step_description';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_completed_step';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_completed_step';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_completed_step';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_completed_step';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_step_link';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_step_link';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_step_link';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_step_link';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

