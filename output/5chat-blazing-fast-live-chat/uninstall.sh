#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fivechat_website_token'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_fivechat_token_valid_%' OR option_name LIKE '_site_transient_fivechat_token_valid_%'"

