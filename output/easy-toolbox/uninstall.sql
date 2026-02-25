-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('etb_choix_adsense', 'etb_ad_content', 'etb_google_ad_content', 'etb_google_ad_content_top', 'etb_google_ad_content_bottom', 'etb_choix_SEO', 'etb_keyword_home', 'etb_analytics', 'etb_getclicky', 'etb_webmastertools', 'etb_bing_webmaster', 'etb_yahoo_site_explorer', 'etb_alexa_verif', 'etb_twitter', 'etb_tweet_format', 'etb_choix_tweet', 'etb_plusone_format', 'etb_choix_plusone', 'etb_facebook', 'etb_facebookid', 'etb_idapps_facebook', 'etb_show_faces_facebook', 'etb_colorscheme_facebook', 'etb_layout_facebook', 'etb_font_facebook', 'etb_choix_like', 'etb_choix_share', 'etb_post_page', 'etb_flickr', 'etb_netvibes', 'etb_itunes', 'etb_feedburner', 'etb_youtube', 'etb_dailymotion', 'etb_wikio', 'etb_version', 'etb_adsense', 'etb_technoratie', 'etb_actu_titre', 'etb_count_content', 'etb_google_id', 'gadsense');

