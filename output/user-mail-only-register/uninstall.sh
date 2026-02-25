#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'usermailonlyregister'
wp option delete 'multibytecaptchalogin'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_umor_captcha_%' OR option_name LIKE '_site_transient_umor_captcha_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lp_terms_of_use'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lp_terms_of_use'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lp_terms_of_use'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lp_terms_of_use'"
