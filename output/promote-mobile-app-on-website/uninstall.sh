#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pmaw_ios_appid'
wp option delete 'pmaw_android_appid'
wp option delete 'pmaw_android_title'
wp option delete 'pmaw_android_author'
wp option delete 'pmaw_android_icon'
wp option delete 'pmaw_android_app_store'
wp option delete 'pmaw_android_price'
wp option delete 'pmaw_android_button'

