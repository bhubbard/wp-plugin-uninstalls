-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('otasync_w_type', 'show_destinations', 'otasync_w_user_id', 'otasync_w_title', 'otasync_w_lang', 'otasync_w_currency', 'otasync_w_background_color', 'otasync_w_border_color', 'otasync_w_fields_text_color', 'otasync_w_button_background_color', 'otasync_w_fields_bg_color', 'otasync_w_fields_border_color', 'otasync_w_destinations', 'otasync_w_hide_child_field', 'otasync_w_vertical_view', 'otasync_w_button_text_color', 'otasync_w_code', 'propert_id', 'buttonBorderColor', 'inputBorderColor', 'widgetBorderColor', 'buttonBorderThickness', 'inputBorderThickness', 'widgetBorderThickness', 'buttonBorderRadius', 'inputBorderRadius', 'borderRadius', 'fixedBottomPosition', 'enablePromo', 'enableChildren', 'backgroundImage', 'gradient', 'calendarDrops', 'view', 'language', 'propertyType', 'textAlignment', 'textColor', 'searchButtonBackgroundColor', 'backgroundColor');

