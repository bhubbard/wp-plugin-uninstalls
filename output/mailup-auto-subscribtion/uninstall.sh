#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mas-host'
wp option delete 'mas-list'
wp option delete 'mas-group'
wp option delete 'mas-confirm'
wp option delete 'mas-newsletter'

