#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'acbd_captcha_page'
wp option delete 'acbd-seconds'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acbd-log'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acbd-log'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acbd-log'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acbd-log'"
