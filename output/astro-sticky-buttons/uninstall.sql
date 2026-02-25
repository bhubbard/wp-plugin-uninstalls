-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('astro_sb_enable_post', 'astro_sb_enable_page', 'astro_sb_enable_attachment');
DELETE FROM wp_options WHERE option_name LIKE '%position';
DELETE FROM wp_options WHERE option_name LIKE '%icon-margin-top';
DELETE FROM wp_options WHERE option_name LIKE '%icon-margin-right';
DELETE FROM wp_options WHERE option_name LIKE '%icon-margin-bottom';
DELETE FROM wp_options WHERE option_name LIKE '%icon-margin-left';
DELETE FROM wp_options WHERE option_name LIKE '%icon-padding';
DELETE FROM wp_options WHERE option_name LIKE '%icon-width';
DELETE FROM wp_options WHERE option_name LIKE '%icon-font-size';
DELETE FROM wp_options WHERE option_name LIKE '%icon-border-width';
DELETE FROM wp_options WHERE option_name LIKE '%icon-border-style';
DELETE FROM wp_options WHERE option_name LIKE '%icon-border-radius';
DELETE FROM wp_options WHERE option_name LIKE '%icon-box-shadow';
DELETE FROM wp_options WHERE option_name LIKE '%custom-css';
DELETE FROM wp_options WHERE option_name LIKE 'astro_sb_enable_%';
DELETE FROM wp_options WHERE option_name LIKE '%email';
DELETE FROM wp_options WHERE option_name LIKE '%telephone';
DELETE FROM wp_options WHERE option_name LIKE '%whatsapp';
DELETE FROM wp_options WHERE option_name LIKE '%skype';
DELETE FROM wp_options WHERE option_name LIKE '%facebook_messenger';
DELETE FROM wp_options WHERE option_name LIKE '%facebook';
DELETE FROM wp_options WHERE option_name LIKE '%instagram';
DELETE FROM wp_options WHERE option_name LIKE '%pinterest';
DELETE FROM wp_options WHERE option_name LIKE '%youtube';
DELETE FROM wp_options WHERE option_name LIKE '%tiktok';
DELETE FROM wp_options WHERE option_name LIKE '%twitter';
DELETE FROM wp_options WHERE option_name LIKE '%vimeo';

