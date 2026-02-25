#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ess_twitter_username'
wp option delete 'ess_facebook'
wp option delete 'ess_twitter'
wp option delete 'ess_google'
wp option delete 'ess_pinterest'
wp option delete 'ess_linked_in'
wp option delete 'ess_email'
wp option delete 'ess_font_awe'

