#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ss_iconsize'
wp option delete 'ss_title'
wp option delete 'ss_twitterwidget'
wp option delete 'ss_googlepluswidget'
wp option delete 'ss_facebookwidget'
wp option delete 'ss_facebook'
wp option delete 'ss_twitter'
wp option delete 'ss_email'
wp option delete 'ss_blogger'
wp option delete 'ss_delicious'
wp option delete 'ss_digg'
wp option delete 'ss_google'
wp option delete 'ss_myspace'
wp option delete 'ss_stumbleupon'
wp option delete 'ss_yahoo'
wp option delete 'ss_reddit'
wp option delete 'ss_technorati'
wp option delete 'ss_rss'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ss_%'"

