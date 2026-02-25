#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ytpp_rel'
wp option delete 'ytpp_info'
wp option delete 'ytpp_controls'
wp option delete 'ytpp_privacy'
wp option delete 'ytpp_iframe_fix'
wp option delete 'ytppYouTubeApi'
wp option delete 'ytpp_height'

