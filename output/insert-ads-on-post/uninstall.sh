#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'insert_ads_on_post_single'
wp option delete 'insert_ads_on_post_showa'
wp option delete 'insert_ads_on_post_above'
wp option delete 'insert_ads_on_post_showb'
wp option delete 'insert_ads_on_post_below'
wp option delete 'insert_ads_on_post_page'
wp option delete 'insertadsonpost_data'

