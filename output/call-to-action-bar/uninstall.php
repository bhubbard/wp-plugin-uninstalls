<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ctab_active');
delete_site_option('ctab_active');
delete_option('ctab_able_to_dismiss');
delete_site_option('ctab_able_to_dismiss');
delete_option('ctab_general_text');
delete_site_option('ctab_general_text');
delete_option('ctab_call_to_action_text');
delete_site_option('ctab_call_to_action_text');
delete_option('ctab_call_to_action_url');
delete_site_option('ctab_call_to_action_url');
delete_option('ctab_bar_background_color');
delete_site_option('ctab_bar_background_color');
delete_option('ctab_bar_text_color');
delete_site_option('ctab_bar_text_color');
delete_option('ctab_call_to_action_background_color');
delete_site_option('ctab_call_to_action_background_color');
delete_option('ctab_call_to_action_text_color');
delete_site_option('ctab_call_to_action_text_color');

