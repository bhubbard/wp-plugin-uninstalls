-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('easy_post_submission_setup_flag', '_easy_post_submission_setup_flag', 'easy_post_submission_post_manager_settings', 'easy_post_submission_recaptcha_migrated', 'easy_post_submission_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rbsm_form_id', 'rbsm_author_info');
DELETE FROM wp_usermeta WHERE meta_key IN ('rbsm_form_id', 'rbsm_author_info');
DELETE FROM wp_termmeta WHERE meta_key IN ('rbsm_form_id', 'rbsm_author_info');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rbsm_form_id', 'rbsm_author_info');

