#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sendcloud_email'
wp option delete 'sendcloud_lable'
wp option delete 'sendcloud_fromname'
wp option delete 'sendcloud_post_publish_notify'
wp option delete 'sendcloud_posts_reply_notify'
wp option delete 'sendcloud_posts_publish_notify_subject'
wp option delete 'sendcloud_posts_publish_notify_content'
wp option delete 'sendcloud_posts_reply_notify_subject'
wp option delete 'sendcloud_posts_reply_notify_content'
wp option delete 'sendcloud_version'
wp option delete 'sendcloud_quota_exceeded'
wp option delete 'sendcloud_invitecode'

