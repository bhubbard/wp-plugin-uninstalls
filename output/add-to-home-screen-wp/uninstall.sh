#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'new_message_ios'
wp option delete 'new_message_android'
wp option delete 'new_startdelay'
wp option delete 'new_lifespan'
wp option delete 'new_expire_days'
wp option delete 'new_animationin'
wp option delete 'new_animationout'
wp option delete 'new_bottomoffset'
wp option delete 'new_touchicon_url'
wp option delete 'new_web_app_title'
wp option delete 'new_returning_visitors_only'
wp option delete 'new_precomposed_icon'
wp option delete 'new_enable_balloon_ios_frontend'
wp option delete 'new_install_prompt_android'
wp option delete 'new_enable_pwa'
wp option delete 'new_balloon_display_frontend'
wp option delete 'new_athswp_frontend_pwa_start_url'
wp option delete 'new_athswp_pwa_custom_url'
wp option delete 'new_athswp_delete_data_on_uninstall'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_simple_aths_first_visit_%' OR option_name LIKE '_site_transient_simple_aths_first_visit_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_simple_aths_balloon_closed_%' OR option_name LIKE '_site_transient_simple_aths_balloon_closed_%'"

