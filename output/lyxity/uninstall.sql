-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lyxity_api_key', 'lyxity_days', 'lyxity_wp_api_url', 'lyxity_wp_username', 'lyxity_wp_password', 'lyxity_article_status', 'lyxity_article_length', 'lyxity_default_language');
DELETE FROM wp_options WHERE option_name LIKE 'lyxity_async_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_data', '_elementor_edit_mode', '_elementor_css');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_data', '_elementor_edit_mode', '_elementor_css');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_data', '_elementor_edit_mode', '_elementor_css');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_data', '_elementor_edit_mode', '_elementor_css');

