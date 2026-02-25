#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bstcmfw-xmlrpc'
wp option delete 'bstcmfw-pingbacks'
wp option delete 'bstcmfw-atom'
wp option delete 'bstcmfw-emojis'
wp option delete 'bstcmfw-manifest'
wp option delete 'bstcmfw-comments'
wp option delete 'bstcmfw-widgets'
wp option delete 'bstcmfw-tags'
wp option delete 'bstcmfw-posts'
wp option delete 'bstcmfw-links'
wp option delete 'bstcmfw-dashboard'
wp option delete 'bstcmfw-themeeditor'
wp option delete 'bstcmfw-cleanadminbar'
wp option delete 'bstcmfw-updatenotifications'
wp option delete 'bstcmfw-optimizequery'
wp option delete 'bstcmfw-gfbuttons'
wp option delete 'bstcmfw-gferrors'
wp option delete 'bstcmfw-disableadminbar'
wp option delete 'bstcmfw-adddefer'
wp option delete 'bstcmfw-removeversion'
wp option delete 'bstcmfw-jigsaw'
wp option delete 'bstcmfw-thumbnails'
wp option delete 'bstcmfw-imagecompression'
wp option delete 'bstcmfw-woocommerce'
wp option delete 'bstcmfw-googleapikey'
wp option delete 'bstcmfw-footertext'
wp option delete 'bstcmfw-serverstats'
wp option delete 'bstcmfw-gform-hide-ip'
wp option delete 'bstcmfw-cookie-enable'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'bstcmfw-cookie-read-more-link_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'bstcmfw-cookie-text_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'bstcmfw-cookie-accept-button-text_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'bstcmfw-cookie-decline-button-text_%'"
wp option delete 'bstcmfw-cookie-wrapper-color'
wp option delete 'bstcmfw-cookie-accept-button-color'
wp option delete 'bstcmfw-cookie-decline-button-color'
wp option delete 'bstcmfw-cookie-text-font-color'
wp option delete 'bstcmfw-cookie-button-font-color'
wp option delete 'bstcmfw-cookie-exdays'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'bstcmfw-cookie-read-more-button-text_%'"
wp option delete 'bstcmfw-cookie-location-setting'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'bstcmfw-cookie-header-accept-scripts_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'bstcmfw-cookie-footer-accept-scripts_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'bstcmfw-cookie-header-decline-scripts_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'bstcmfw-cookie-footer-decline-scripts_%'"
wp option delete 'bstcmfw-gform-remove-submission'
wp option delete 'database_version'
wp option delete 'bstcmfw-gform-iframe-background-color'
wp option delete 'bstcmfw-gform-iframe-text-color'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'bstcmfw-gform-iframe-text_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'bstcmfw-gform-iframe-button-text_%'"
wp option delete 'bstcmfw-company'

