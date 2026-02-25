-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('floatyheader_sh_selector', 'floatyheader_sh_bg_color', 'floatyheader_sh_text_color', 'floatyheader_sh_offset', 'floatyheader_sh_transition_effect', 'floatyheader_sh_disable_mobile', 'floatyheader_sh_mobile_bg_color', 'floatyheader_sh_mobile_text_color', 'floatyheader_sh_scroll_up_mode', 'floatyheader_sh_scroll_up_desktop', 'floatyheader_sh_scroll_up_mobile');

