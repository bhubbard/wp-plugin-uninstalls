#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wepay_mode'
wp option delete 'wepay_accountID'
wp option delete 'wepay_clientID'
wp option delete 'wepay_clientsecret'
wp option delete 'wepay_accesstoken'
wp option delete 'wepay_thankqpage'

