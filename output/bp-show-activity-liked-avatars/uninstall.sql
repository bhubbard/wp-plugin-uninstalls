-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bsala_avatar_size', 'bsala_custom_title', 'bsala_min_avatar_no', 'bsala_max_avatar_no', 'bsala_custom_style', 'bsala_text_for_more', ' bsala_avatar_size ', ' bsala_custom_title ', ' bsala_min_avatar_no ', ' bsala_max_avatar_no ', ' bsala_text_for_more ');

