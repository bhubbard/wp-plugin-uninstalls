#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpsocialite_excerpt'
wp option delete 'wpsocialite_networkoptions'
wp option delete 'wpsocialite_mode'
wp option delete 'wpsocialite_vkontakte_apiId'
wp option delete 'wpsocialite_style'
wp option delete 'wpsocialite_single'
wp option delete 'wpsocialite_position'
wp option delete 'wpsocialite_post_types'
wp option delete 'wpsocialite_twitter_username'

