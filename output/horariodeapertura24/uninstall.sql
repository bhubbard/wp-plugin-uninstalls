-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_horariodeapertura24_widgetwo', 'wp_horariodeapertura24_widgetwas', 'wp_horariodeapertura24_titlecolor', 'wp_horariodeapertura24_titlebgcolor', 'wp_horariodeapertura24_textcolor', 'wp_horariodeapertura24_textbgcolor', 'wp_horariodeapertura24_buttoncolor', 'wp_horariodeapertura24_buttonbgcolor');

