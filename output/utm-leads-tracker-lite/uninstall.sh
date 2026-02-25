#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'before_order_cookie_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'before_order_cookie_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'before_order_cookie_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'before_order_cookie_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'after_order_cookie_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'after_order_cookie_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'after_order_cookie_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'after_order_cookie_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_occurrence_timestamp_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_occurrence_timestamp_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_occurrence_timestamp_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_occurrence_timestamp_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_occurrence_timestamp_end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_occurrence_timestamp_end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_occurrence_timestamp_end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_occurrence_timestamp_end'"
