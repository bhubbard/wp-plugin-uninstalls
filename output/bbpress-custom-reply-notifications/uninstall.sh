#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_bbp_topic_notice_body'
wp option delete '_bbp_topic_notice_title'
wp option delete '_bbp_reply_notice_body'
wp option delete '_bbp_reply_notice_title'

