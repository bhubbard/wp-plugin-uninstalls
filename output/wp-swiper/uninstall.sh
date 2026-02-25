#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-options'"
wp option delete 'wp_swiper_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpswiper_beta_140_dismissed_v2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpswiper_beta_140_dismissed_v2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpswiper_beta_140_dismissed_v2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpswiper_beta_140_dismissed_v2'"
