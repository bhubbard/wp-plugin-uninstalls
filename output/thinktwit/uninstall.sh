#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'widget_thinktwit_settings'
wp option delete 'twitter_api_settings'
wp option delete 'thinktwit_do_activation_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_cache'"
wp option delete 'widget_thinktwit'

