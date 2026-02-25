#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'disable_pages'
wp option delete 'disable_message'
wp option delete 'disable_admin'

