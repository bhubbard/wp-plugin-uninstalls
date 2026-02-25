-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_psp_require_for', '_psp_always_verify', '_psp_delay_timer', '_psp_pagetargeting_option', '_psp_cookie_length', '_psp_popup_template', '_psp_image_link', '_psp_logo', '_psp_heading', '_psp_description', '_psp_custom_agreebutton_text', '_psp_ctabutton_link', '_psp_agree_btn_bgcolor', '_psp_box_color', '_psp_ajax_check', '_psp_reset_cookie', '_psp_new_cookie_name', 'pretty-simple-popup', '_psp_edge_to_edge_image', '_psp_moreinfo_link', '_psp_overlay_color', '_psp_adjust_transparency', '_psp_box_show', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', '_psp_cookie_duration', '_psp_input_type', '_psp_membership', '_psp_user_age_verify_option', '_psp_disclaimer', '_psp_disAgree_btn_bgcolor', '_psp_custom_disagreebutton_text', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_psp_needs_verify');
DELETE FROM wp_usermeta WHERE meta_key IN ('_psp_needs_verify');
DELETE FROM wp_termmeta WHERE meta_key IN ('_psp_needs_verify');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_psp_needs_verify');

