#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rpic_phone'
wp option delete 'rpic_message'
wp option delete 'rpic_buttontext'
wp option delete 'rpic_enabled'

