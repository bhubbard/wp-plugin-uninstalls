#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gg_af_app_id'
wp option delete 'gg_af_tracking_id'
wp option delete 'gg_custom_fields_cell'

