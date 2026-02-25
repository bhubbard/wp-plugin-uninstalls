-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mango_popup_mailchimp_api_key', 'mango_popup_plugin_redirect', 'mailchimp-woocommerce');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mango_popup_views', 'mango_popup_clicks', 'mango_popup_mailchimp_target_id', 'mango_popup_position', 'mango_popup_template', 'mango_popup_page_id_display', 'mango_popup_background_image_url', 'mango_popup_background_color', 'mango_popup_animation_start', 'mango_popup_when_popup_display', 'mango_popup_how_often_popup_display', 'mango_popup_hide_on_devices', 'mango_popup_target_link', 'mango_popup_max_width', 'mango_popup_font_families_used', 'mango_popup_woocommerce', 'mango_popup_custom_css');
DELETE FROM wp_usermeta WHERE meta_key IN ('mango_popup_views', 'mango_popup_clicks', 'mango_popup_mailchimp_target_id', 'mango_popup_position', 'mango_popup_template', 'mango_popup_page_id_display', 'mango_popup_background_image_url', 'mango_popup_background_color', 'mango_popup_animation_start', 'mango_popup_when_popup_display', 'mango_popup_how_often_popup_display', 'mango_popup_hide_on_devices', 'mango_popup_target_link', 'mango_popup_max_width', 'mango_popup_font_families_used', 'mango_popup_woocommerce', 'mango_popup_custom_css');
DELETE FROM wp_termmeta WHERE meta_key IN ('mango_popup_views', 'mango_popup_clicks', 'mango_popup_mailchimp_target_id', 'mango_popup_position', 'mango_popup_template', 'mango_popup_page_id_display', 'mango_popup_background_image_url', 'mango_popup_background_color', 'mango_popup_animation_start', 'mango_popup_when_popup_display', 'mango_popup_how_often_popup_display', 'mango_popup_hide_on_devices', 'mango_popup_target_link', 'mango_popup_max_width', 'mango_popup_font_families_used', 'mango_popup_woocommerce', 'mango_popup_custom_css');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mango_popup_views', 'mango_popup_clicks', 'mango_popup_mailchimp_target_id', 'mango_popup_position', 'mango_popup_template', 'mango_popup_page_id_display', 'mango_popup_background_image_url', 'mango_popup_background_color', 'mango_popup_animation_start', 'mango_popup_when_popup_display', 'mango_popup_how_often_popup_display', 'mango_popup_hide_on_devices', 'mango_popup_target_link', 'mango_popup_max_width', 'mango_popup_font_families_used', 'mango_popup_woocommerce', 'mango_popup_custom_css');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'mango_popup_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'mango_popup_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'mango_popup_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'mango_popup_%';

