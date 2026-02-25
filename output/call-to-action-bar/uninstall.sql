-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ctab_active', 'ctab_able_to_dismiss', 'ctab_general_text', 'ctab_call_to_action_text', 'ctab_call_to_action_url', 'ctab_bar_background_color', 'ctab_bar_text_color', 'ctab_call_to_action_background_color', 'ctab_call_to_action_text_color');

