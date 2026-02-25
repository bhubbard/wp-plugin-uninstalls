-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_auto_embed';
DELETE FROM wp_options WHERE option_name LIKE '%_img_og_meta';
DELETE FROM wp_options WHERE option_name LIKE '%_img_min_width';
DELETE FROM wp_options WHERE option_name LIKE '%_img_min_height';
DELETE FROM wp_options WHERE option_name LIKE '%_img_disallow_ads';
DELETE FROM wp_options WHERE option_name LIKE '%_shot_service';

