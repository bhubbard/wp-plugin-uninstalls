-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mdp_speaker_lite_assignments_settings', 'mdp_speaker_lite_developer_settings', 'mdp_speaker_lite_css_settings', 'mdp_speaker_lite_go_pro_settings', 'mdp_speaker_lite_settings', 'mdp_speaker_lite_design_settings', 'mdp_speaker_lite_status_settings', 'mdp_speaker_lite_post_types_settings', 'mdp_speaker_lite_uninstall_settings', 'speaker_list_voices');

