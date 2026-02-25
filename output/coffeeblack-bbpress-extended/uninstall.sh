#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cb_bbpress_vis_editor'
wp option delete 'cb_bbpress_forum_settings'
wp option delete 'cb_bbpress_enable_shortcode'
wp option delete 'cb_bbpress_tinymce_bbcode_editor'
wp option delete 'cb_bbpress_forum_in_search'
wp option delete 'cb_bbpress_topic_in_search'
wp option delete 'cb_bbpress_reply_in_search'
wp option delete 'cb_bbpress_new_topic_link'
wp option delete 'cb_bbpress_load_content_single_topic_template'
wp option delete 'cb_bbpress_bbcode_enabled'
wp option delete 'cb_bbpress_quote_enabled'
wp option delete 'cb_bbpress_set_tinymce_default'
wp option delete 'cb_bbpress_replace_bbpress_signature_with_xprofile_field'
wp option delete 'cb_bbpress_show_username'
wp option delete 'cb_bbpress_login_url_option'
wp option delete 'cb_bbpress_login_url'
wp option delete 'cb_bbpress_login_url_custom'
wp option delete 'cb_bbpress_logout_url_option'
wp option delete 'cb_bbpress_logout_url'
wp option delete 'cb_bbpress_logout_url_custom'
wp option delete 'cb_bbpress_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_anonymous_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_anonymous_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_anonymous_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_anonymous_name'"
