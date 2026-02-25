#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'id_revertMobile'
wp option delete 'id_blogAcct'
wp option delete 'id_useIDComments'
wp option delete 'id_jsCommentLinks'
wp option delete 'id_moderationPage'
wp option delete 'id_pdxsync'
wp option delete 'id_blogKey'
wp option delete 'id_blogID'
wp option delete 'id_lock_queue'
wp option delete 'id_import_token'
wp option delete 'id_import_comment_id'
wp option delete 'comment_previously_approved'
wp option delete 'disallowed_keys'
wp option delete 'wordpress_api_key'
wp option delete 'id_signup_step'
wp option delete 'id_hideSettingsTop'
wp option delete 'id_recent_comments_count'
wp option delete 'id_top_commenters_count'
wp option delete 'id_most_commented_posts_count'

