-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cses_enable_box', 'cses_enable_fontawesome', 'cses_display_position', 'cses_display_icon_names', 'cses_question_text', 'cses_display_location', 'cses_display_buttons', 'cses_options_group');

