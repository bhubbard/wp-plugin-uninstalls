#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'elephantm_maintenance_enabled'
wp option delete 'elephantm_maintenance_title'
wp option delete 'elephantm_maintenance_message'
wp option delete 'elephantm_maintenance_phone'
wp option delete 'elephantm_maintenance_social'
wp option delete 'elephantm_maintenance_bg'

