#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wmf_thwsw_ex_options'
wp option delete 'wmf_thwsw_options'
wp option delete 'wmf_thwsw_time_option'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wmf_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wmf_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wmf_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wmf_notice'"
