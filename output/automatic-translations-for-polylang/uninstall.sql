-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cpfm_opt_in_choice_cool_translations', 'atfp_feedback_opt_in', 'cpt_dashboard_data', 'atfp_custom_block_data', 'atfp_custom_block_status', 'atfp-install-date', 'atfp_initial_save_version', 'cpt_review_notice_dismissed', 'atfp-v', 'atfp_translation_string_migration', 'atfp-type', 'atfp-installDate', 'atfp_custom_block_translation', 'cpel_autopoly_installed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_edit_mode', '_et_pb_use_builder', '_atfp_elementor_translated', '_atfp_parent_post_language_slug', '_elementor_data', 'atfp_elementor_translated', 'atfp_parent_post_language_slug', 'atfpp_elementor_translated');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_edit_mode', '_et_pb_use_builder', '_atfp_elementor_translated', '_atfp_parent_post_language_slug', '_elementor_data', 'atfp_elementor_translated', 'atfp_parent_post_language_slug', 'atfpp_elementor_translated');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_edit_mode', '_et_pb_use_builder', '_atfp_elementor_translated', '_atfp_parent_post_language_slug', '_elementor_data', 'atfp_elementor_translated', 'atfp_parent_post_language_slug', 'atfpp_elementor_translated');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_edit_mode', '_et_pb_use_builder', '_atfp_elementor_translated', '_atfp_parent_post_language_slug', '_elementor_data', 'atfp_elementor_translated', 'atfp_parent_post_language_slug', 'atfpp_elementor_translated');

