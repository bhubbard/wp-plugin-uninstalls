#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sb-%'"
wp option delete 'sb-title'
wp option delete 'sb-color'
wp option delete 'sb-position'
wp option delete 'sb-sharing'
wp option delete 'sb-effect'
wp option delete 'sb-share-facebook'
wp option delete 'sb-share-tweet'
wp option delete 'sb-share-pinterest'
wp option delete 'sb-share-linkedin'
wp option delete 'sb-share-gplus'
wp option delete 'sb-share-email'

