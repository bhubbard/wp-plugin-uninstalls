-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('popup_overlay_color', 'popup_border_radius', 'popup_box_shadow', 'popup_close_button_size', 'popup_close_button_radius', 'popup_close_button_alignment', 'popupfe_redirect_on_activation');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_popup_show_on_load', '_elementor_popup_delay', '_elementor_popup_show_on_scroll', '_elementor_popup_scroll_percentage', '_elementor_popup_exit_intent', '_elementor_exit_intent_display_mode', '_elementor_trigger_selector_enabled', '_elementor_trigger_selector');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_popup_show_on_load', '_elementor_popup_delay', '_elementor_popup_show_on_scroll', '_elementor_popup_scroll_percentage', '_elementor_popup_exit_intent', '_elementor_exit_intent_display_mode', '_elementor_trigger_selector_enabled', '_elementor_trigger_selector');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_popup_show_on_load', '_elementor_popup_delay', '_elementor_popup_show_on_scroll', '_elementor_popup_scroll_percentage', '_elementor_popup_exit_intent', '_elementor_exit_intent_display_mode', '_elementor_trigger_selector_enabled', '_elementor_trigger_selector');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_popup_show_on_load', '_elementor_popup_delay', '_elementor_popup_show_on_scroll', '_elementor_popup_scroll_percentage', '_elementor_popup_exit_intent', '_elementor_exit_intent_display_mode', '_elementor_trigger_selector_enabled', '_elementor_trigger_selector');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_popup_id_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_popup_id_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_popup_id_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_popup_id_%';

