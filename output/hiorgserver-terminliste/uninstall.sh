#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hiorg_account'
wp option delete 'hiorg_anzahl'
wp option delete 'hiorg_monate'
wp option delete 'hiorg_link'

