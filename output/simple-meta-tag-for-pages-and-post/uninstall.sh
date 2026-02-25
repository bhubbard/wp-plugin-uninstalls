#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dp-metatags-general-description'
wp option delete 'dp-metatags-general-keywords'
wp option delete 'dp-metatags-general-title'
wp option delete 'dp-metatags-og-title'
wp option delete 'dp-metatags-og-type'
wp option delete 'dp-metatags-og-audio'
wp option delete 'dp-metatags-og-image'
wp option delete 'dp-metatags-og-video'
wp option delete 'dp-metatags-og-url'
wp option delete 'dp-metatags-og-description'
wp option delete 'dp-metatags-twitter-card'
wp option delete 'dp-metatags-twitter-title'
wp option delete 'dp-metatags-twitter-description'
wp option delete 'dp-metatags-twitter-image'
wp option delete 'dp-metatags-custom'

# Delete Transients
wp transient delete 'dp-metatags-activation-notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dp-metatags-general-description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dp-metatags-general-description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dp-metatags-general-description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dp-metatags-general-description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dp-metatags-general-keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dp-metatags-general-keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dp-metatags-general-keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dp-metatags-general-keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dp-metatags-general-title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dp-metatags-general-title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dp-metatags-general-title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dp-metatags-general-title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dp-metatags-og-title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dp-metatags-og-title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dp-metatags-og-title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dp-metatags-og-title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dp-metatags-og-type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dp-metatags-og-type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dp-metatags-og-type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dp-metatags-og-type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dp-metatags-og-audio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dp-metatags-og-audio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dp-metatags-og-audio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dp-metatags-og-audio'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dp-metatags-og-image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dp-metatags-og-image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dp-metatags-og-image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dp-metatags-og-image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dp-metatags-og-video'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dp-metatags-og-video'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dp-metatags-og-video'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dp-metatags-og-video'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dp-metatags-og-url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dp-metatags-og-url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dp-metatags-og-url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dp-metatags-og-url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dp-metatags-og-description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dp-metatags-og-description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dp-metatags-og-description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dp-metatags-og-description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dp-metatags-twitter-card'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dp-metatags-twitter-card'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dp-metatags-twitter-card'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dp-metatags-twitter-card'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dp-metatags-twitter-title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dp-metatags-twitter-title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dp-metatags-twitter-title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dp-metatags-twitter-title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dp-metatags-twitter-description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dp-metatags-twitter-description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dp-metatags-twitter-description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dp-metatags-twitter-description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dp-metatags-twitter-image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dp-metatags-twitter-image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dp-metatags-twitter-image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dp-metatags-twitter-image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dp-metatags-custom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dp-metatags-custom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dp-metatags-custom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dp-metatags-custom'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ddp-metatags-og-url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ddp-metatags-og-url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ddp-metatags-og-url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ddp-metatags-og-url'"
