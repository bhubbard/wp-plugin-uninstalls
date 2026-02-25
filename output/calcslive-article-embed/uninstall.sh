#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'calcslive_api_key'
wp option delete 'calcslive_default_width'
wp option delete 'calcslive_default_height'
wp option delete 'calcslive_domain'

