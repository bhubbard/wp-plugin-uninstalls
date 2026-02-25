#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shariff_gplus'
wp option delete 'shariff_fb'
wp option delete 'shariff_twitter'
wp option delete 'shariff_linkedin'
wp option delete 'shariff_pinterest'
wp option delete 'shariff_xing'
wp option delete 'shariff_reddit'
wp option delete 'shariff_stumbleupon'
wp option delete 'shariff_whatsapp'
wp option delete 'shariff_email'
wp option delete 'shariff_info'
wp option delete 'shariff_beforeafter'
wp option delete 'shariff_image'
wp option delete 'shariff_hideonoverview'
wp option delete 'shariff_twittervia'
wp option delete 'shariff_infourl'
wp option delete 'shariff_temp'
wp option delete 'shariff_ttl'
wp option delete 'shariff_color'
wp option delete 'shariff_orientation'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shariff_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shariff_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shariff_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shariff_enabled'"
