-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('plugin_urbangiraffe_rss');
DELETE FROM wp_options WHERE option_name LIKE 'widget_available_%';
DELETE FROM wp_options WHERE option_name LIKE 'widget_config_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('custom_post_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('custom_post_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('custom_post_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('custom_post_template');

