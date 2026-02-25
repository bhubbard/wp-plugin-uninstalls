#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'Twitter_HashTag'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_tweets_has_%' OR option_name LIKE '_site_transient_tweets_has_%'"

