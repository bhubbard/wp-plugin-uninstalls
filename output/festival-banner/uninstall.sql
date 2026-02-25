-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('festival_banner_version', 'festival_banner_options', 'festival_banner_deactivated_time');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_fb_position', '_fb_is_recurring', '_fb_end_date', '_fb_start_date', '_fb_display_type', '_fb_specific_pages', '_fb_is_dismissible', '_fb_content', '_fb_cta_text', '_fb_cta_url', '_fb_cta_new_tab', '_fb_floating_position', '_fb_side_position', '_fb_modal_delay', '_fb_recurring_year', '_fb_bg_color', '_fb_text_color', '_fb_cta_bg_color', '_fb_cta_text_color', '_fb_animation');
DELETE FROM wp_usermeta WHERE meta_key IN ('_fb_position', '_fb_is_recurring', '_fb_end_date', '_fb_start_date', '_fb_display_type', '_fb_specific_pages', '_fb_is_dismissible', '_fb_content', '_fb_cta_text', '_fb_cta_url', '_fb_cta_new_tab', '_fb_floating_position', '_fb_side_position', '_fb_modal_delay', '_fb_recurring_year', '_fb_bg_color', '_fb_text_color', '_fb_cta_bg_color', '_fb_cta_text_color', '_fb_animation');
DELETE FROM wp_termmeta WHERE meta_key IN ('_fb_position', '_fb_is_recurring', '_fb_end_date', '_fb_start_date', '_fb_display_type', '_fb_specific_pages', '_fb_is_dismissible', '_fb_content', '_fb_cta_text', '_fb_cta_url', '_fb_cta_new_tab', '_fb_floating_position', '_fb_side_position', '_fb_modal_delay', '_fb_recurring_year', '_fb_bg_color', '_fb_text_color', '_fb_cta_bg_color', '_fb_cta_text_color', '_fb_animation');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_fb_position', '_fb_is_recurring', '_fb_end_date', '_fb_start_date', '_fb_display_type', '_fb_specific_pages', '_fb_is_dismissible', '_fb_content', '_fb_cta_text', '_fb_cta_url', '_fb_cta_new_tab', '_fb_floating_position', '_fb_side_position', '_fb_modal_delay', '_fb_recurring_year', '_fb_bg_color', '_fb_text_color', '_fb_cta_bg_color', '_fb_cta_text_color', '_fb_animation');

