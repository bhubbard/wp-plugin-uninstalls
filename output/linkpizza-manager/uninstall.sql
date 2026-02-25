-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pzz_fullname', 'pzz_username', 'pzz_id', 'pzz_settings', 'pzz_logged_in_user', 'pzz_tracking_only_categories', 'pzz_tracking_only_on_posts_before', 'pzz_indexable_javascript', 'pzz_link_summary_border_color', 'pzz_link_summary_border_width', 'pzz_link_summary_border_padding', 'pzz_link_summary_width', 'pzz_link_summary_link_color', 'pzz_link_summary_enabled', 'pzz_link_summary_position', 'pzz_link_summary_layout_type', 'pzz_link_summary_tag_background_color', 'pzz_link_summary_use_title_text', 'linkPizza_Manager_settings', 'pzz_disabled_categories');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_linkpizza_disabled_domains', '_linkpizza_tracking_only_domains', '_linkPizza_tracking_only', '_linkPizza_disabled', '_pzz_link_summary_disabled_post', '_linkpizza_disabled_urls');
DELETE FROM wp_usermeta WHERE meta_key IN ('_linkpizza_disabled_domains', '_linkpizza_tracking_only_domains', '_linkPizza_tracking_only', '_linkPizza_disabled', '_pzz_link_summary_disabled_post', '_linkpizza_disabled_urls');
DELETE FROM wp_termmeta WHERE meta_key IN ('_linkpizza_disabled_domains', '_linkpizza_tracking_only_domains', '_linkPizza_tracking_only', '_linkPizza_disabled', '_pzz_link_summary_disabled_post', '_linkpizza_disabled_urls');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_linkpizza_disabled_domains', '_linkpizza_tracking_only_domains', '_linkPizza_tracking_only', '_linkPizza_disabled', '_pzz_link_summary_disabled_post', '_linkpizza_disabled_urls');

