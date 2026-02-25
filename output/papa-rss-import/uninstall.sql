-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('google_ad_client', 'google_ad_slot', 'google_ad_width', 'google_ad_height', 'googlenews_first_time', 'googlenews_last_check', 'googlenews_scraped', 'googlenews_job_option');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('article_thumbnail', 'keyword', 'publisher', 'content', 'content2', 'content3', 'content4', 'content5', '_aioseop_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('article_thumbnail', 'keyword', 'publisher', 'content', 'content2', 'content3', 'content4', 'content5', '_aioseop_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('article_thumbnail', 'keyword', 'publisher', 'content', 'content2', 'content3', 'content4', 'content5', '_aioseop_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('article_thumbnail', 'keyword', 'publisher', 'content', 'content2', 'content3', 'content4', 'content5', '_aioseop_description');

