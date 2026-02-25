-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('traa_ldactions_all_actions');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('traa_ldactions_executions_ignore_clean', 'traa_ldactions_times_executed', 'traa_ldactions_executions', '_wp_page_template', 'traa_ldactions_action_course_enroll_section', 'traa_ldactions_action_group_add_section', 'traa_ldactions_unique_code');
DELETE FROM wp_usermeta WHERE meta_key IN ('traa_ldactions_executions_ignore_clean', 'traa_ldactions_times_executed', 'traa_ldactions_executions', '_wp_page_template', 'traa_ldactions_action_course_enroll_section', 'traa_ldactions_action_group_add_section', 'traa_ldactions_unique_code');
DELETE FROM wp_termmeta WHERE meta_key IN ('traa_ldactions_executions_ignore_clean', 'traa_ldactions_times_executed', 'traa_ldactions_executions', '_wp_page_template', 'traa_ldactions_action_course_enroll_section', 'traa_ldactions_action_group_add_section', 'traa_ldactions_unique_code');
DELETE FROM wp_commentmeta WHERE meta_key IN ('traa_ldactions_executions_ignore_clean', 'traa_ldactions_times_executed', 'traa_ldactions_executions', '_wp_page_template', 'traa_ldactions_action_course_enroll_section', 'traa_ldactions_action_group_add_section', 'traa_ldactions_unique_code');

