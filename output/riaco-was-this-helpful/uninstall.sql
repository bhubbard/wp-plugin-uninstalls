-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('riwth_show_admin_bar_content', 'riwth_feedback_box_thanks_text', 'riwth_load_scripts', 'riwth_load_styles', 'riwth_feedback_box_color_background', 'riwth_feedback_box_text', 'riwth_feedback_box_border_button_rounded', 'riwth_display_on', 'riwth_display_by_user_role', 'riwth_feedback_box_positive_button_icon', 'riwth_feedback_box_negative_button_icon', 'riwth_feedback_box_color_positive_button', 'riwth_feedback_box_color_positive_text', 'riwth_feedback_box_color_negative_button', 'riwth_feedback_box_color_negative_text', 'riwth_review_notice_done', 'riwth_feedback_box_submitting_text', 'riwth_uninstall_remove_data', 'riwth_feedback_box_template', 'riwth_feedback_box_positive_button_text', 'riwth_feedback_box_negative_button_text', 'riwth_feedback_box', 'riwth_review_notice_maybe_later');
DELETE FROM wp_options WHERE option_name LIKE '%_button_icon';
DELETE FROM wp_options WHERE option_name LIKE '%_button_text';
DELETE FROM wp_options WHERE option_name LIKE '%_button';
DELETE FROM wp_options WHERE option_name LIKE '%_text';
DELETE FROM wp_options WHERE option_name LIKE 'riwth_total_feedback_%';
DELETE FROM wp_options WHERE option_name LIKE 'riwth_positive_feedback_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_riwth_reset_date', '_riwth_disable_box');
DELETE FROM wp_usermeta WHERE meta_key IN ('_riwth_reset_date', '_riwth_disable_box');
DELETE FROM wp_termmeta WHERE meta_key IN ('_riwth_reset_date', '_riwth_disable_box');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_riwth_reset_date', '_riwth_disable_box');

