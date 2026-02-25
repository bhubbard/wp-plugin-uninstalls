#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'displaytweets_version'
wp option delete 'displaytweets_settings'

# Delete Transients
wp transient delete 'displaytweets_tweets'

