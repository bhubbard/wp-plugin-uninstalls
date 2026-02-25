-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('disqus_rcw_api_key', 'disqus_rcw_forum_name', 'disqus_rcw_date_format', 'disqus_rcw_title_wrapper', 'disqus_rcw_which_markup', 'disqus_rcw_disable_caching', 'disqus_rcw_dont_use_css', 'disqus_rcw_settings_do_activation_redirect', 'disqus_rcw_cache');

