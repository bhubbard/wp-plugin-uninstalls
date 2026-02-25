-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('knowledgeringppgt_popular_posts_widget_content', 'knowledgeringppgt_plugin_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('krppretweets', 'krppfacebooklikes', 'views');
DELETE FROM wp_usermeta WHERE meta_key IN ('krppretweets', 'krppfacebooklikes', 'views');
DELETE FROM wp_termmeta WHERE meta_key IN ('krppretweets', 'krppfacebooklikes', 'views');
DELETE FROM wp_commentmeta WHERE meta_key IN ('krppretweets', 'krppfacebooklikes', 'views');

