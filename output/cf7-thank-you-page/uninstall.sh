#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cf7_thank_you_page_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cf7_redirect_setting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cf7_redirect_setting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cf7_redirect_setting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cf7_redirect_setting'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'use_external_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'use_external_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'use_external_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'use_external_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'enable_redirect'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'enable_redirect'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'enable_redirect'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'enable_redirect'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'external_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'external_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'external_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'external_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'redirect_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'redirect_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'redirect_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'redirect_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'redirect_post_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'redirect_post_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'redirect_post_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'redirect_post_type'"
