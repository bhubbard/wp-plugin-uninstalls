#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'onematix_chatbot_id'
wp option delete 'onematix_show_everywhere'
wp option delete 'onematix_show_only_selected'
wp option delete 'onematix_selected_posts'
wp option delete 'onematix_excluded_posts'
wp option delete 'onematix_chatbot_id2'
wp option delete 'onematix_show_everywhere2'
wp option delete 'onematix_show_only_selected2'
wp option delete 'onematix_selected_posts2'
wp option delete 'onematix_excluded_posts2'

