#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bctt-twitter-handle'
wp option delete 'bctt-short-url'
wp option delete 'bctt_disable_css'
wp option delete 'bctt_style_enqueued'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_active'"

# Delete Transients
wp transient delete '_bctt_activation_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_promo_hide' OR option_name LIKE '_site_transient_%_promo_hide'"
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bctt_has_dismissed_nag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bctt_has_dismissed_nag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bctt_has_dismissed_nag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bctt_has_dismissed_nag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bctt_has_dismissed_utm_nag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bctt_has_dismissed_utm_nag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bctt_has_dismissed_utm_nag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bctt_has_dismissed_utm_nag'"
