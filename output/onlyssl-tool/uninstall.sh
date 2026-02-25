#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'onlyssl_maintenance_mode'
wp option delete 'onlyssl_custom_message'
wp option delete 'onlyssl_logo_url'
wp option delete 'onlyssl_image_url'

