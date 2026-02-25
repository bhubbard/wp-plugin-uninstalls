-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hybridai_registration_url', 'hybridai_consent_mode', 'hybridai_cmp_mode', 'hybridai_custom_script', 'hybridai_extended_page', 'hybridai_color_scheme', 'hybridai_custom_welcome_message', 'hybridai_theme', 'hybridai_border_radius', 'hybridai_box_shadow', 'hybridai_context_enabled', 'hybridai_position', 'hybridai_width', 'hybridai_height', 'hybridai_margin_x', 'hybridai_margin_y', 'hybridai_opacity', 'hybridai_auto_open', 'hybridai_custom_context', 'hybridai_shared_secret', 'hybridai_config_error', 'hybridai_bot_id', 'hybridai_bot_url', 'hybridai_config_success', 'hybridai_chatbot_id', 'hybridai_extended_mode');

