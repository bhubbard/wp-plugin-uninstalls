-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('buddyboss_theme_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpe_wps_short_description', 'bp_cover_position', 'space_action_button', 'space_action_button_whatsapp_message', 'space_action_button_phone', 'space_action_button_email', 'space_action_button_contact_us', 'space_action_button_website', 'space_action_button_website_video', 'space_action_button_visit_group', 'space_action_button_sign_up', 'space_action_button_start_order', 'space_action_button_view_shop', 'space_action_button_get_tickets');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpe_wps_short_description', 'bp_cover_position', 'space_action_button', 'space_action_button_whatsapp_message', 'space_action_button_phone', 'space_action_button_email', 'space_action_button_contact_us', 'space_action_button_website', 'space_action_button_website_video', 'space_action_button_visit_group', 'space_action_button_sign_up', 'space_action_button_start_order', 'space_action_button_view_shop', 'space_action_button_get_tickets');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpe_wps_short_description', 'bp_cover_position', 'space_action_button', 'space_action_button_whatsapp_message', 'space_action_button_phone', 'space_action_button_email', 'space_action_button_contact_us', 'space_action_button_website', 'space_action_button_website_video', 'space_action_button_visit_group', 'space_action_button_sign_up', 'space_action_button_start_order', 'space_action_button_view_shop', 'space_action_button_get_tickets');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpe_wps_short_description', 'bp_cover_position', 'space_action_button', 'space_action_button_whatsapp_message', 'space_action_button_phone', 'space_action_button_email', 'space_action_button_contact_us', 'space_action_button_website', 'space_action_button_website_video', 'space_action_button_visit_group', 'space_action_button_sign_up', 'space_action_button_start_order', 'space_action_button_view_shop', 'space_action_button_get_tickets');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'space_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'space_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'space_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'space_%';

