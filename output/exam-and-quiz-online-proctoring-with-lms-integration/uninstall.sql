-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mo_procto_select_lms', 'mo_procto_disable_mouse_right_click', 'mo_enable_proctoring', 'mo_procto_restrict_tab_switch', 'mo_procto_restrict_inspect_browser', 'mo_enable_live_video', 'mo_procto_selected_quizzes', 'mo_procto_restrict_session', 'mo_procto_max_limit_action', 'mo_procto_activated_time', 'email', 'mo_procto_admin_phone', 'mo_procto_current_plugin_version');

