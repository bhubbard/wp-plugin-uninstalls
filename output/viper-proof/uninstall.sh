#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'link'
wp option delete 'twittername'
wp option delete 'fanpageid'
wp option delete 'fanpagename'
wp option delete 'displaytypes'
wp option delete 'icons'
wp option delete 'monthlyvisitors'
wp option delete 'viperproof_followers'
wp option delete 'viperproof_followers_update'
wp option delete 'viperproof_last_twitterer'

