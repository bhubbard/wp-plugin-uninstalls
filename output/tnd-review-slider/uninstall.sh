#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'TNDRESL_grs_api_key'
wp option delete 'TNDRESL_grs_place_id'
wp option delete 'TRONRESL_grs_api_key'
wp option delete 'TRONRESL_grs_place_id'

