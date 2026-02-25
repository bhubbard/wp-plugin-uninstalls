-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('RSSRTVR_LITE_MAX_EXEC_TIME', 'RSSRTVR_LITE_CRON_MAGIC');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_rssrtvr_rss_source', '_wp_page_template', '_rssrtvr_post_name', '_rssrtvr_post_link', '_rssrtvr_post_lifetime', '_rssrtvr_thumb_source');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_rssrtvr_rss_source', '_wp_page_template', '_rssrtvr_post_name', '_rssrtvr_post_link', '_rssrtvr_post_lifetime', '_rssrtvr_thumb_source');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_rssrtvr_rss_source', '_wp_page_template', '_rssrtvr_post_name', '_rssrtvr_post_link', '_rssrtvr_post_lifetime', '_rssrtvr_thumb_source');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_rssrtvr_rss_source', '_wp_page_template', '_rssrtvr_post_name', '_rssrtvr_post_link', '_rssrtvr_post_lifetime', '_rssrtvr_thumb_source');

