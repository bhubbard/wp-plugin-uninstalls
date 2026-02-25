-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cpfm_opt_in_choice_cool_translations', 'atlt_feedback_opt_in', 'cpt_dashboard_data', 'cpt_review_notice_dismissed', 'atlt-install-date', 'atlt_initial_save_version', 'atlt-already-rated', 'atlt-ratingDiv', 'atlt-pro-version', 'atlt_do_activation_redirect', 'atlt-version', 'atlt-installDate', 'atlt-type', 'loco_current_translation');

