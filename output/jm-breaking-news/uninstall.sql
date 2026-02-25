-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jm_breaking_news_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('jm_breaking_news_internal_link', 'jm_breaking_news_in_ex', 'jm_breaking_news_link', 'jm_breaking_news_limit', 'jm_breaking_news_target', 'jm_breaking_news_color', 'jm_breaking_news_background_color', 'jm_breaking_news_text_color', 'jm_breaking_news_news_text_color');
DELETE FROM wp_usermeta WHERE meta_key IN ('jm_breaking_news_internal_link', 'jm_breaking_news_in_ex', 'jm_breaking_news_link', 'jm_breaking_news_limit', 'jm_breaking_news_target', 'jm_breaking_news_color', 'jm_breaking_news_background_color', 'jm_breaking_news_text_color', 'jm_breaking_news_news_text_color');
DELETE FROM wp_termmeta WHERE meta_key IN ('jm_breaking_news_internal_link', 'jm_breaking_news_in_ex', 'jm_breaking_news_link', 'jm_breaking_news_limit', 'jm_breaking_news_target', 'jm_breaking_news_color', 'jm_breaking_news_background_color', 'jm_breaking_news_text_color', 'jm_breaking_news_news_text_color');
DELETE FROM wp_commentmeta WHERE meta_key IN ('jm_breaking_news_internal_link', 'jm_breaking_news_in_ex', 'jm_breaking_news_link', 'jm_breaking_news_limit', 'jm_breaking_news_target', 'jm_breaking_news_color', 'jm_breaking_news_background_color', 'jm_breaking_news_text_color', 'jm_breaking_news_news_text_color');

