#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'split_test_counter_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'split_children_count_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'split_number_counter_%'"
wp option delete 'sct_api_key'
wp option delete 'sct_last_domain_ID'
wp option delete 'rlm_version_simple_click_tracker'
wp option delete 'sct_notification'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sct_dflt_domain_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sct_dflt_domain_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sct_dflt_domain_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sct_dflt_domain_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sct_dflt_group_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sct_dflt_group_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sct_dflt_group_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sct_dflt_group_id'"
