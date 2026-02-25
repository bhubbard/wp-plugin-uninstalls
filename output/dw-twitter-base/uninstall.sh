#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dw_twitteruser'
wp option delete 'dw_consumerkey'
wp option delete 'dw_consumersecret'
wp option delete 'dw_accesstoken'
wp option delete 'dw_accesstokensecret'

