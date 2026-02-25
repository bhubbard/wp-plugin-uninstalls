-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kn_mobile_sharebar_where', 'kn_mobile_sharebar_twitter', 'kn_mobile_sharebar_whatsapp', 'kn_mobile_sharebar_visibility_homepage', 'kn_mobile_sharebar_visibility_post', 'kn_mobile_sharebar_visibility_page', 'kn_mobile_sharebar_height', 'kn_mobile_small_desktop', 'kn_mobile_sharebar_facebook');
DELETE FROM wp_options WHERE option_name LIKE '%_where';
DELETE FROM wp_options WHERE option_name LIKE '%_facebook';
DELETE FROM wp_options WHERE option_name LIKE '%_twitter';
DELETE FROM wp_options WHERE option_name LIKE '%_whatsapp';
DELETE FROM wp_options WHERE option_name LIKE '%_visibility_homepage';
DELETE FROM wp_options WHERE option_name LIKE '%_visibility_post';
DELETE FROM wp_options WHERE option_name LIKE '%_visibility_page';
DELETE FROM wp_options WHERE option_name LIKE '%_height';
DELETE FROM wp_options WHERE option_name LIKE '%_small_desktop';

