#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vgwpdup_disable-theme'
wp option delete 'vgwpdup_disable-plugin'
wp option delete 'vgwpdup_disable-wordpress'
wp option delete 'vgwpdup_disable-translation'

