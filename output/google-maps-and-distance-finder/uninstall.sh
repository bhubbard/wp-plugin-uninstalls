#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'company_image'
wp option delete 'user_image'
wp option delete 'company_location'

