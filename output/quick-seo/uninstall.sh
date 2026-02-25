#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'f-social'
wp option delete 't-social'
wp option delete 'g-social'
wp option delete 'y-social'
wp option delete 'googleplus-button'
wp option delete 'home_title'
wp option delete 'meta_settings'
wp option delete 'canonical'
wp option delete 'author'
wp option delete 'publisher'
wp option delete 'ga'
wp option delete 'google-verification'
wp option delete 'bing-verification'
wp option delete 'home_desc'
wp option delete 'robots'
wp option delete 'xmlsitemap'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Desc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tags'"
