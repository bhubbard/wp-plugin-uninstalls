<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mdp_speaker_lite_assignments_settings');
delete_site_option('mdp_speaker_lite_assignments_settings');
delete_option('mdp_speaker_lite_developer_settings');
delete_site_option('mdp_speaker_lite_developer_settings');
delete_option('mdp_speaker_lite_css_settings');
delete_site_option('mdp_speaker_lite_css_settings');
delete_option('mdp_speaker_lite_go_pro_settings');
delete_site_option('mdp_speaker_lite_go_pro_settings');
delete_option('mdp_speaker_lite_settings');
delete_site_option('mdp_speaker_lite_settings');
delete_option('mdp_speaker_lite_design_settings');
delete_site_option('mdp_speaker_lite_design_settings');
delete_option('mdp_speaker_lite_status_settings');
delete_site_option('mdp_speaker_lite_status_settings');
delete_option('mdp_speaker_lite_post_types_settings');
delete_site_option('mdp_speaker_lite_post_types_settings');
delete_option('mdp_speaker_lite_uninstall_settings');
delete_site_option('mdp_speaker_lite_uninstall_settings');

// Delete Transients
delete_transient('speaker_list_voices');
delete_site_transient('speaker_list_voices');

