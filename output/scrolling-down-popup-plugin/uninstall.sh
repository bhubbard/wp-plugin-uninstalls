#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sdp_On_Homepage'
wp option delete 'sdp_On_Posts'
wp option delete 'sdp_On_Pages'
wp option delete 'sdp_On_Archives'
wp option delete 'sdp_On_Search'
wp option delete 'sdp_cookies'

