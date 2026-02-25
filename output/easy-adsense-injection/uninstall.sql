-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('easy_ad_below_title', 'easy_ad_below_content', 'easy_ad_inbetween', 'easy_ad_paragraph_position', 'easy_ad_above_header', 'easy_ad_below_footer');

