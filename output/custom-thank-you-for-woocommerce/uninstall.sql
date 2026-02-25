-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ctyw_page_id', 'ctyw_info', 'ctyw_notice_dismiss', 'ctyw_enable_fb_social_box', 'ctyw_enable_twitter_social_box', 'ctyw_enable_pinterest_social_box', 'wc_custom_page_info');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wc_custom_thanks_redirect');
DELETE FROM wp_usermeta WHERE meta_key IN ('wc_custom_thanks_redirect');
DELETE FROM wp_termmeta WHERE meta_key IN ('wc_custom_thanks_redirect');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wc_custom_thanks_redirect');

