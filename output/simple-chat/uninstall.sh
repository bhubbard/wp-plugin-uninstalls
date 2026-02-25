#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sra_show_posts_at_home'
wp option delete 'schat_color'
wp option delete 'schat_theme'
wp option delete 'schat_notification'
wp option delete 'simple_chat_version'

