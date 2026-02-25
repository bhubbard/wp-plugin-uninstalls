-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('td_tts_db_version', 'td_tts_menuPos', 'td_tts_styles', 'td_tts_notification', 'td_tts_responsenote', 'td_tts_contactForm', 'td_tts_loginForm', 'td_tts_successPage');

