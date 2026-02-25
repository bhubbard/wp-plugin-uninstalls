#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dmmrd_enable_mode'
wp option delete 'dmmrd_custom_page_id'
wp option delete 'dmmrd_mode_scope'
wp option delete 'dmmrd_maintenance_type'

