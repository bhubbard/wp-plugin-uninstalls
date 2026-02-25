#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'snowstorm_flakesMax'
wp option delete 'snowstorm_flakesMaxActive'
wp option delete 'snowstorm_animationInterval'
wp option delete 'snowstorm_excludeMobile'
wp option delete 'snowstorm_followMouse'
wp option delete 'snowstorm_snowColor'
wp option delete 'snowstorm_snowCharacter'
wp option delete 'snowstorm_snowStick'
wp option delete 'snowstorm_useMeltEffect'
wp option delete 'snowstorm_useTwinkleEffect'
wp option delete 'snowstorm_ratereview_scheduled'
wp option delete 'snowstorm_showmessage_ratereview'
wp option delete 'snowstorm_hidemessage_ratereview'
wp option delete 'snowstorm_dismissed-ratereview'
wp option delete 'snowstorm_pp'
wp option delete 'snow_storm_smart_rating_dismissed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'snowstorm_dismissed-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'snowstorm_%'"

# Clear Cron Jobs
wp cron event delete 'snowstorm_ratereviewhook'

