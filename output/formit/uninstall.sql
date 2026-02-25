-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('formit_installed', 'formit_version', 'formit_news_dashboard_widget_news');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_formit_builder_shortcode', 'formit_from_dom', 'formit_from_json', 'formit_dismissed_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('_formit_builder_shortcode', 'formit_from_dom', 'formit_from_json', 'formit_dismissed_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('_formit_builder_shortcode', 'formit_from_dom', 'formit_from_json', 'formit_dismissed_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_formit_builder_shortcode', 'formit_from_dom', 'formit_from_json', 'formit_dismissed_notice');

