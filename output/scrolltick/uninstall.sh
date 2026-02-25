#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_scrolltick_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-transient'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpsf_term_%'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpsf-mt-%' OR option_name LIKE '_site_transient_wpsf-mt-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient__wpsf_umeta_%' OR option_name LIKE '_site_transient__wpsf_umeta_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpsf-wc-mt%' OR option_name LIKE '_site_transient_wpsf-wc-mt%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_scrolltick_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_scrolltick_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_scrolltick_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_scrolltick_options'"
