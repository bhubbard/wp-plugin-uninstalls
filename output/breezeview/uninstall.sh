#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jal_db_version'
wp option delete 'bv_gr_api_key'
wp option delete 'bv_gr_place_id'

