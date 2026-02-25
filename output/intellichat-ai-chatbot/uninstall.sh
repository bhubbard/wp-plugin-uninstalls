#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'intellichat_ai_chatbot_id'
wp option delete 'intellichat_ai_install_time'
wp option delete 'intellichat_ai_review_notice_dismissed'
wp option delete 'intellichat_ai_review_notice_remind'

