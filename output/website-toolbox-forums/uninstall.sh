#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%websitetoolbox_url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%websitetoolbox_pageid'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%websitetoolbox_activation_redirect'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%websitetoolbox_username'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%websitetoolbox_api'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%wt_secret_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%websitetoolbox_user_roles'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%websitetoolbox_embedUrl'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%websitetoolbox_redirect'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%websitetoolbox_settings_updated'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%websitetoolbox_failHttpRequest'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%websitetoolbox_error'"
wp option delete 'websitetoolbox_page_content'
wp option delete 'websitetoolbox_page_category'
wp option delete 'websitetoolbox_post_content'
wp option delete 'websitetoolbox_post_category'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_category'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_content'"
wp option delete 'websitetoolbox_url'

# Delete Transients
wp transient delete 'wtb_first_time_setup'
wp transient delete 'wtb_used_existing_page'
wp transient delete 'wtb_created_new_page'
wp transient delete 'wtbAuthtokenInUrl'
wp transient delete 'websitetoolbox_transient_reply'
wp transient delete 'websitetoolbox_transient_replyCount'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_wtbredirect_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_wtbredirect_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_wtbredirect_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_wtbredirect_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_links_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_links_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_links_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_links_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'website_toolbox_forum_postUrl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'website_toolbox_forum_postUrl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'website_toolbox_forum_postUrl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'website_toolbox_forum_postUrl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'website_toolbox_forum_publishing_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'website_toolbox_forum_publishing_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'website_toolbox_forum_publishing_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'website_toolbox_forum_publishing_error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'website_toolbox_publish_on_forum'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'website_toolbox_publish_on_forum'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'website_toolbox_publish_on_forum'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'website_toolbox_publish_on_forum'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'website_toolbox_forum_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'website_toolbox_forum_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'website_toolbox_forum_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'website_toolbox_forum_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'forum_topicId'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'forum_topicId'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'forum_topicId'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'forum_topicId'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'result'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'result'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'result'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'result'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'forum_postId'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'forum_postId'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'forum_postId'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'forum_postId'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'website_toolbox_existing_forum_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'website_toolbox_existing_forum_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'website_toolbox_existing_forum_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'website_toolbox_existing_forum_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'forum_postContent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'forum_postContent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'forum_postContent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'forum_postContent'"
