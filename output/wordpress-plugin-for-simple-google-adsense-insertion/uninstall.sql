-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_in_article_ad_code', 'wp_post_article_ad_code', 'wp_ad_camp_1_code', 'wp_ad_camp_2_code', 'wp_ad_camp_3_code', 'wp_ad_camp_4_code', 'wp_ad_camp_5_code');

