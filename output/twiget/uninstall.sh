#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'twiget_options'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_tweets-%' OR option_name LIKE '_site_transient_tweets-%'"

