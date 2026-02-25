<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mo_procto_select_lms');
delete_site_option('mo_procto_select_lms');
delete_option('mo_procto_disable_mouse_right_click');
delete_site_option('mo_procto_disable_mouse_right_click');
delete_option('mo_enable_proctoring');
delete_site_option('mo_enable_proctoring');
delete_option('mo_procto_restrict_tab_switch');
delete_site_option('mo_procto_restrict_tab_switch');
delete_option('mo_procto_restrict_inspect_browser');
delete_site_option('mo_procto_restrict_inspect_browser');
delete_option('mo_enable_live_video');
delete_site_option('mo_enable_live_video');
delete_option('mo_procto_selected_quizzes');
delete_site_option('mo_procto_selected_quizzes');
delete_option('mo_procto_restrict_session');
delete_site_option('mo_procto_restrict_session');
delete_option('mo_procto_max_limit_action');
delete_site_option('mo_procto_max_limit_action');
delete_option('mo_procto_activated_time');
delete_site_option('mo_procto_activated_time');
delete_option('email');
delete_site_option('email');
delete_option('mo_procto_admin_phone');
delete_site_option('mo_procto_admin_phone');
delete_option('mo_procto_current_plugin_version');
delete_site_option('mo_procto_current_plugin_version');

