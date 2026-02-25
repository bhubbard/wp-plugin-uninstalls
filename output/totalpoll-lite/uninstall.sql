-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('totalpoll_nps', 'totalpoll_onboarding', 'widget_totalpoll_poll', 'totalpoll_uninstall_feedback', 'totalpoll_options', '_tp_options_captcha_site_key', '_tp_options_captcha_site_secret', 'wp-polls_poll_migrated', 'poll_bar', 'poll_ans_sortby', 'poll_ans_sortorder', 'poll_ans_result_sortby', 'poll_ans_result_sortorder', 'poll_allowtovote', 'poll_cookielog_expiry', 'poll_logging_method', 'poll_bar_bg', 'poll_bar_border', 'yop_poll_migrated', 'totalpoll_default_preset', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE '%account';
DELETE FROM wp_options WHERE option_name LIKE '%license_key';
DELETE FROM wp_options WHERE option_name LIKE '%license_status';
DELETE FROM wp_options WHERE option_name LIKE '%license_email';
DELETE FROM wp_options WHERE option_name LIKE '%_modules_store_response';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('poll_preset', '_migrated', 'question', 'choices', 'settings_limitations', 'settings_results', 'settings_choices', 'settings_fields', 'settings_design', 'settings_screens', 'settings_logs', 'settings_notifications', '_mp_logs', '_mp_submissions', '_preset_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('poll_preset', '_migrated', 'question', 'choices', 'settings_limitations', 'settings_results', 'settings_choices', 'settings_fields', 'settings_design', 'settings_screens', 'settings_logs', 'settings_notifications', '_mp_logs', '_mp_submissions', '_preset_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('poll_preset', '_migrated', 'question', 'choices', 'settings_limitations', 'settings_results', 'settings_choices', 'settings_fields', 'settings_design', 'settings_screens', 'settings_logs', 'settings_notifications', '_mp_logs', '_mp_submissions', '_preset_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('poll_preset', '_migrated', 'question', 'choices', 'settings_limitations', 'settings_results', 'settings_choices', 'settings_fields', 'settings_design', 'settings_screens', 'settings_logs', 'settings_notifications', '_mp_logs', '_mp_submissions', '_preset_id');

