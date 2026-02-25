#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kn_mobile_sharebar_where'
wp option delete 'kn_mobile_sharebar_twitter'
wp option delete 'kn_mobile_sharebar_whatsapp'
wp option delete 'kn_mobile_sharebar_visibility_homepage'
wp option delete 'kn_mobile_sharebar_visibility_post'
wp option delete 'kn_mobile_sharebar_visibility_page'
wp option delete 'kn_mobile_sharebar_height'
wp option delete 'kn_mobile_small_desktop'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_where'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_facebook'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_twitter'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_whatsapp'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_visibility_homepage'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_visibility_post'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_visibility_page'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_height'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_small_desktop'"
wp option delete 'kn_mobile_sharebar_facebook'

