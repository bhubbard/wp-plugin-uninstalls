#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'customer_notes_install_time'
wp option delete 'allow_user_edit'
wp option delete 'allow_order_edit'
wp option delete 'enable_sticky_note'
wp option delete 'customer_notes_review_notice_dismissed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_textarea'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_textarea'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_textarea'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_textarea'"
