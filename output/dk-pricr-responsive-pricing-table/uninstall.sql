-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_rpt_plan_group', '_rpt_currency', '_rpt_open_newwindow', '_rpt_original_font', '_rpt_title_alignment', '_rpt_title_fontsize', '_rpt_subtitle_fontsize', '_rpt_description_fontsize', '_rpt_price_fontsize', '_rpt_recurrence_fontsize', '_rpt_button_fontsize', '_rpt_features_fontsize');
DELETE FROM wp_usermeta WHERE meta_key IN ('_rpt_plan_group', '_rpt_currency', '_rpt_open_newwindow', '_rpt_original_font', '_rpt_title_alignment', '_rpt_title_fontsize', '_rpt_subtitle_fontsize', '_rpt_description_fontsize', '_rpt_price_fontsize', '_rpt_recurrence_fontsize', '_rpt_button_fontsize', '_rpt_features_fontsize');
DELETE FROM wp_termmeta WHERE meta_key IN ('_rpt_plan_group', '_rpt_currency', '_rpt_open_newwindow', '_rpt_original_font', '_rpt_title_alignment', '_rpt_title_fontsize', '_rpt_subtitle_fontsize', '_rpt_description_fontsize', '_rpt_price_fontsize', '_rpt_recurrence_fontsize', '_rpt_button_fontsize', '_rpt_features_fontsize');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_rpt_plan_group', '_rpt_currency', '_rpt_open_newwindow', '_rpt_original_font', '_rpt_title_alignment', '_rpt_title_fontsize', '_rpt_subtitle_fontsize', '_rpt_description_fontsize', '_rpt_price_fontsize', '_rpt_recurrence_fontsize', '_rpt_button_fontsize', '_rpt_features_fontsize');

