-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('just_in_case_gallery_fb_include_base', 'just_in_case_gallery_fb_on', 'array_key');

