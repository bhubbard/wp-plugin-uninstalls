#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fogm_chat_options'
wp option delete 'fogm_chat_trigger_options'
wp option delete 'fogm_chat_greetings_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fogm_chat_review_ignore'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fogm_chat_review_ignore'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fogm_chat_review_ignore'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fogm_chat_review_ignore'"
