#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pb_application_id'
wp option delete 'pb_application_secret'
wp option delete 'pb_website_url'
wp option delete 'pb_safari_push_id'
wp option delete 'pb_enable_welcome_message'
wp option delete 'pb_welcome_title'
wp option delete 'pb_welcome_message'

