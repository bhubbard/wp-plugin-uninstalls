-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_duration';
DELETE FROM wp_options WHERE option_name LIKE '%_message_multiple';
DELETE FROM wp_options WHERE option_name LIKE '%_message';
DELETE FROM wp_options WHERE option_name LIKE '%cc_callbacks';
DELETE FROM wp_options WHERE option_name LIKE '%cc_consent_type';
DELETE FROM wp_options WHERE option_name LIKE '%cc_website_name';
DELETE FROM wp_options WHERE option_name LIKE '%cc_notice_banner_type';
DELETE FROM wp_options WHERE option_name LIKE '%cc_color_palette';
DELETE FROM wp_options WHERE option_name LIKE '%cc_language';
DELETE FROM wp_options WHERE option_name LIKE '%cc_notice_banner_reject_button_hide';
DELETE FROM wp_options WHERE option_name LIKE '%cc_preferences_center_close_button_hide';
DELETE FROM wp_options WHERE option_name LIKE '%cc_page_refresh_confirmation_buttons';
DELETE FROM wp_options WHERE option_name LIKE '%cc_custom_css';
DELETE FROM wp_options WHERE option_name LIKE '%cc_vendor_scripts_b64';
DELETE FROM wp_options WHERE option_name LIKE '%cc_enabled';
DELETE FROM wp_options WHERE option_name LIKE '%cc_selected_version';
DELETE FROM wp_options WHERE option_name LIKE '%_when';
DELETE FROM wp_options WHERE option_name LIKE '%_where';
DELETE FROM wp_options WHERE option_name LIKE '%_tag';
DELETE FROM wp_options WHERE option_name LIKE '%_target_blank';
DELETE FROM wp_options WHERE option_name LIKE '%_custom_css';
DELETE FROM wp_options WHERE option_name LIKE '%_bar_type';
DELETE FROM wp_options WHERE option_name LIKE '%_bar_position';
DELETE FROM wp_options WHERE option_name LIKE '%_close_message';
DELETE FROM wp_options WHERE option_name LIKE '%_disable_logged';
DELETE FROM wp_options WHERE option_name LIKE '%update_notice_duration';
DELETE FROM wp_options WHERE option_name LIKE '%cc_allow_open_prf_center';
DELETE FROM wp_options WHERE option_name LIKE '%settings_warning_disable';
DELETE FROM wp_options WHERE option_name LIKE '%links_separator';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_last_user_update';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_last_user_update';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_last_user_update';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_last_user_update';

