#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'seasongreets_snowflakes'
wp option delete 'seasongreets_timeout'
wp option delete 'seasongreets_maxstepx'
wp option delete 'seasongreets_maxstepy'
wp option delete 'seasongreets_selected'
wp option delete 'seasongreets_maxtime'
wp option delete 'seasongreets_uri'
wp option delete 'seasongreets_precise'
wp option delete 'seasongreets_flakesize'
wp option delete 'seasongreets_invert'
wp option delete 'seasongreets_homelink'

