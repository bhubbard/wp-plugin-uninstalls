-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bd_is_optin', 'bd_plugin_do_activation_redirect', 'wp_blog_designer_settings', 'display_sticky', 'display_category', 'social_icon_style', 'template_alternativebackground', 'display_tag', 'display_author', 'display_date', 'social_share', 'facebook_link', 'twitter_link', 'linkedin_link', 'pinterest_link', 'display_comment_count', 'excerpt_length', 'display_html_tags', 'read_more_on', 'read_more_text', 'template_titlefontsize', 'content_fontsize', 'wp_blog_news_ticker', 'blog_page_display', 'custom_css', 'bd_version', 'is_user_subscribed_cancled', 'is_user_subscribed', 'bd_unintall_data', 'admin_url', 'active_sitewide_plugins', 'template_post_content_wrap_from', 'blog_designer_promo_time', 'blog_designer_promo_time_review', 'blog_designer_already_dismissed', 'blog_designer_already_dismissed_time');

