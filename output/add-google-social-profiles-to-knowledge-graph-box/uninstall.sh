#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gsp_type'
wp option delete 'gsp_facebook'
wp option delete 'gsp_instagram'
wp option delete 'gsp_twitter'
wp option delete 'gsp_google'
wp option delete 'gsp_linkedin'
wp option delete 'gsp_youtube'
wp option delete 'gsp_myspace'
wp option delete 'gsp_pinterest'
wp option delete 'gsp_soundcloud'
wp option delete 'gsp_tumblr'
wp option delete 'gsp_name'

