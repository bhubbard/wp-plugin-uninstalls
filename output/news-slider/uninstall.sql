-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('comet_breaking_news_common');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('slide_bg_image', 'b_news_content', 'b_news_link');
DELETE FROM wp_usermeta WHERE meta_key IN ('slide_bg_image', 'b_news_content', 'b_news_link');
DELETE FROM wp_termmeta WHERE meta_key IN ('slide_bg_image', 'b_news_content', 'b_news_link');
DELETE FROM wp_commentmeta WHERE meta_key IN ('slide_bg_image', 'b_news_content', 'b_news_link');

