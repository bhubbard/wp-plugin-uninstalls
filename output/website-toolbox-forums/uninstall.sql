-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('websitetoolbox_page_content', 'websitetoolbox_page_category', 'websitetoolbox_post_content', 'websitetoolbox_post_category', 'websitetoolbox_url', 'wtb_first_time_setup', 'wtb_used_existing_page', 'wtb_created_new_page', 'wtbAuthtokenInUrl', 'websitetoolbox_transient_reply', 'websitetoolbox_transient_replyCount');
DELETE FROM wp_options WHERE option_name LIKE '%websitetoolbox_url';
DELETE FROM wp_options WHERE option_name LIKE '%websitetoolbox_pageid';
DELETE FROM wp_options WHERE option_name LIKE '%websitetoolbox_activation_redirect';
DELETE FROM wp_options WHERE option_name LIKE '%websitetoolbox_username';
DELETE FROM wp_options WHERE option_name LIKE '%websitetoolbox_api';
DELETE FROM wp_options WHERE option_name LIKE '%wt_secret_key';
DELETE FROM wp_options WHERE option_name LIKE '%websitetoolbox_user_roles';
DELETE FROM wp_options WHERE option_name LIKE '%websitetoolbox_embedUrl';
DELETE FROM wp_options WHERE option_name LIKE '%websitetoolbox_redirect';
DELETE FROM wp_options WHERE option_name LIKE '%websitetoolbox_settings_updated';
DELETE FROM wp_options WHERE option_name LIKE '%websitetoolbox_failHttpRequest';
DELETE FROM wp_options WHERE option_name LIKE '%websitetoolbox_error';
DELETE FROM wp_options WHERE option_name LIKE '%_category';
DELETE FROM wp_options WHERE option_name LIKE '%_content';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_data', '_elementor_css', 'website_toolbox_forum_postUrl', 'website_toolbox_forum_publishing_error', 'website_toolbox_publish_on_forum', 'website_toolbox_forum_category', 'forum_topicId', 'result', 'forum_postId', 'website_toolbox_existing_forum_category', 'forum_postContent');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_data', '_elementor_css', 'website_toolbox_forum_postUrl', 'website_toolbox_forum_publishing_error', 'website_toolbox_publish_on_forum', 'website_toolbox_forum_category', 'forum_topicId', 'result', 'forum_postId', 'website_toolbox_existing_forum_category', 'forum_postContent');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_data', '_elementor_css', 'website_toolbox_forum_postUrl', 'website_toolbox_forum_publishing_error', 'website_toolbox_publish_on_forum', 'website_toolbox_forum_category', 'forum_topicId', 'result', 'forum_postId', 'website_toolbox_existing_forum_category', 'forum_postContent');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_data', '_elementor_css', 'website_toolbox_forum_postUrl', 'website_toolbox_forum_publishing_error', 'website_toolbox_publish_on_forum', 'website_toolbox_forum_category', 'forum_topicId', 'result', 'forum_postId', 'website_toolbox_existing_forum_category', 'forum_postContent');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_wtbredirect_active';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_wtbredirect_active';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_wtbredirect_active';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_wtbredirect_active';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_links_to';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_links_to';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_links_to';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_links_to';

