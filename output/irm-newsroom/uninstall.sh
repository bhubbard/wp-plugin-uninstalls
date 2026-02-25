#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'site_key'
wp option delete 'site_type'
wp option delete 'site_directory'
wp option delete 'emailunsub_landing_page'
wp option delete 'share_price_toggle'
wp option delete 'email_landing_page'

