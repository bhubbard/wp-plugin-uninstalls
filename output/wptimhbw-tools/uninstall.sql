-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wtht_disable_gutenberg', 'wtht_post_revisions', 'wtht_wordpres_china_mirror', 'wtht_image_center', 'wtht_rewrite_page_permalink', 'wtht_domain', 'wtht_cdndomain', 'wtht_exts', 'tht_gravatar_url', 'wtht_gravatar_url', 'wtht_baidu_tongji', 'wtht_google_tongji', 'wptimhbw_tools');

