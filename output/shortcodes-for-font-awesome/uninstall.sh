#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'scfa-asset-type'
wp option delete 'scfa-default-style'
wp option delete 'scfa-asset-url'
wp option delete 'scfa-remove-settings'

