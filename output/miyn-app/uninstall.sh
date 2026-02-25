#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'miyn-banner-attachment'
wp option delete 'miyn-secret-key'
wp option delete 'miyn-business-logo'
wp option delete 'photo_url'
wp option delete 'background_image'
wp option delete 'change-widgets-image'
wp option delete 'miyn-exclude-pages'

