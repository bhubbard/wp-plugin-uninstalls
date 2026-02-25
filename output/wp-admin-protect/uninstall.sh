#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'protector-activated'
wp option delete 'protector-term'
wp option delete 'protector-url'

