#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shiftt_notify_appid'
wp option delete 'shiftt_notify_appsecret'
wp option delete 'shiftt_notify_wxtemplateid'
wp option delete 'shiftt_notify_author_openid'

