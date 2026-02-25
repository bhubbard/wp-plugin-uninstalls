-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xhtheme_code_styletype', 'xhtheme_code_mode', 'xhtheme_code_languages', 'xhtheme_code_defaultLang');

