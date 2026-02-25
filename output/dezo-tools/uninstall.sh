#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dezo-ganalytics-id'
wp option delete 'dezo-custom-header'
wp option delete 'dezo-custom-footer'
wp option delete 'dezo-hide-wp-header-details'
wp option delete 'dezo-disable-emojis'
wp option delete 'dezo-enable-html-minify'
wp option delete 'dezo-enable-lightbox'

