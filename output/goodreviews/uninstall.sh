#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'goodreviews-getmethod'
wp option delete 'goodreviews-api-key'
wp option delete 'goodreviews-agree'
wp option delete 'goodreviews-responsive-style'
wp option delete 'goodreviews-alt-style'
wp option delete 'goodrev-perform'
wp option delete 'goodrev-clearcache'
wp option delete 'goodrev-defer'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'goodreviews_220'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'goodreviews_220'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'goodreviews_220'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'goodreviews_220'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'goodreviews_ignore_FileGetEnabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'goodreviews_ignore_FileGetEnabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'goodreviews_ignore_FileGetEnabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'goodreviews_ignore_FileGetEnabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'goodreviews_ignore_CurlEnabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'goodreviews_ignore_CurlEnabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'goodreviews_ignore_CurlEnabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'goodreviews_ignore_CurlEnabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'goodreviews_ignore_CurlDisabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'goodreviews_ignore_CurlDisabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'goodreviews_ignore_CurlDisabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'goodreviews_ignore_CurlDisabled'"
