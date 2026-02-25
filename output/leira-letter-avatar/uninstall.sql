-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('leira_letter_avatar_rounded', 'leira_letter_avatar_gravatar', 'leira_letter_avatar_format', 'leira_letter_avatar_letters', 'leira_letter_avatar_bold', 'leira_letter_avatar_uppercase', 'leira_letter_avatar_color_method', 'leira_letter_avatar_color', 'leira_letter_avatar_method', 'leira_letter_avatar_bg', 'leira_letter_avatar_bgs', 'leira_letter_avatar_footer_rated');

