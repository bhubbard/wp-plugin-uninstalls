-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wdseg_guidelines_text', 'wdseg_text_color', 'wdseg_background_color');
DELETE FROM wp_options WHERE option_name LIKE 'wdseg_post_type_%';
DELETE FROM wp_options WHERE option_name LIKE 'wdseg_user_role_%';

