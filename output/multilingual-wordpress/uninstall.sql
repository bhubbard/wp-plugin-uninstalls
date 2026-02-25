-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('automatic_lang_redirection', 'show_lang_warnings', 'show_alternatives_box', 'session_lang_redirection');
DELETE FROM wp_options WHERE option_name LIKE 'redirect_%';
DELETE FROM wp_options WHERE option_name LIKE 'session_lang_%';

