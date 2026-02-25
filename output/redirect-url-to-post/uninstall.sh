#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'redirect-url-to-post-onboarding'
wp option delete 'redirect-url-to-post-admin-notice'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_chatty_mango_rutp_post_ids-%' OR option_name LIKE '_site_transient_chatty_mango_rutp_post_ids-%'"
wp transient delete 'chatty_mango_rutp_transient_keys'

