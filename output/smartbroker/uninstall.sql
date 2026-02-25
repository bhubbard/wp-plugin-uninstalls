-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sb_plugin_options', 'sb_sitemap_last_refresh', 'rewrite_rules', 'sb_widget_size_low', 'sb_widget_size_high', 'sb_widget_price_low', 'sb_widget_price_high', 'sb_about_page_activated');

