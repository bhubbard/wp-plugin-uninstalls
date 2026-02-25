-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ccc_start_date', 'ccc_end_date', 'ccc_display_popover', 'ccc_pop_up_width', 'ccc_pop_up_height', 'ccc_email_winner', 'ccc_email_winner_body', 'ccc_email_winner_subject', 'ccc_text_winning', 'ccc_text_losing', 'ccc_text_invalid', 'ccc_text_already_used', 'ccc_contest_not_running', 'ccc_hide_email', 'ccc_hide_first_name', 'ccc_hide_last_name', 'ccc_do_not_save_invalid', 'ccc_enable_captcha', 'ccc_recaptcha_secret_api', 'ccc_recaptcha_site_key', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ccc_has_been_used', 'ccc_contest_code_id', 'ccc_contestant_first_name', 'ccc_contestant_last_name', 'ccc_email', 'ccc_prize', 'ccc_invalid_contest_code', 'ccc_prize_codes', 'ccc_prize_information');
DELETE FROM wp_usermeta WHERE meta_key IN ('ccc_has_been_used', 'ccc_contest_code_id', 'ccc_contestant_first_name', 'ccc_contestant_last_name', 'ccc_email', 'ccc_prize', 'ccc_invalid_contest_code', 'ccc_prize_codes', 'ccc_prize_information');
DELETE FROM wp_termmeta WHERE meta_key IN ('ccc_has_been_used', 'ccc_contest_code_id', 'ccc_contestant_first_name', 'ccc_contestant_last_name', 'ccc_email', 'ccc_prize', 'ccc_invalid_contest_code', 'ccc_prize_codes', 'ccc_prize_information');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ccc_has_been_used', 'ccc_contest_code_id', 'ccc_contestant_first_name', 'ccc_contestant_last_name', 'ccc_email', 'ccc_prize', 'ccc_invalid_contest_code', 'ccc_prize_codes', 'ccc_prize_information');

