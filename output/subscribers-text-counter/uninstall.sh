#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'widget_subscribers_text_counter'
wp option delete 'widget_subscribers_text_counter_dynamic'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'example_ignore_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'example_ignore_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'example_ignore_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'example_ignore_notice'"
