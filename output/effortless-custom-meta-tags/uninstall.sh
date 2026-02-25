#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'elcmt_csp'
wp option delete 'elcmt_description'
wp option delete 'elcmt_og_enabled'
wp option delete 'elcmt_og_title'
wp option delete 'elcmt_og_description'
wp option delete 'elcmt_og_image'
wp option delete 'elcmt_og_url'
wp option delete 'elcmt_twitter_enabled'
wp option delete 'elcmt_twitter_title'
wp option delete 'elcmt_twitter_description'
wp option delete 'elcmt_twitter_image'
wp option delete 'elcmt_twitter_card'

