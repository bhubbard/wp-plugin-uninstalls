#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cs_user'
wp option delete 'cs_api_key'
wp option delete 'srch_type'

