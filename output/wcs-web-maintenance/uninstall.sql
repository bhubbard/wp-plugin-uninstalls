-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%enabled';
DELETE FROM wp_options WHERE option_name LIKE '%login';
DELETE FROM wp_options WHERE option_name LIKE '%body_html';
DELETE FROM wp_options WHERE option_name LIKE '%roles';
DELETE FROM wp_options WHERE option_name LIKE '%head_title';
DELETE FROM wp_options WHERE option_name LIKE '%body_title';
DELETE FROM wp_options WHERE option_name LIKE '%body_subtitle';
DELETE FROM wp_options WHERE option_name LIKE '%body_content';
DELETE FROM wp_options WHERE option_name LIKE '%color_bg';
DELETE FROM wp_options WHERE option_name LIKE '%color_text';
DELETE FROM wp_options WHERE option_name LIKE '%color_link';
DELETE FROM wp_options WHERE option_name LIKE '%color_link2';
DELETE FROM wp_options WHERE option_name LIKE '%color_icon';

