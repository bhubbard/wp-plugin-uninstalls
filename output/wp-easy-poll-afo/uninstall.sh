#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'poll_result_after_it_ends'
wp option delete 'poll_share_enable_facebook'
wp option delete 'poll_share_enable_twitter'
wp option delete 'poll_share_enable_google'
wp option delete 'poll_share_enable_linkedin'
wp option delete 'poll_share_enable_email'

