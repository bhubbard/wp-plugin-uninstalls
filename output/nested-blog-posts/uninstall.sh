#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nbp_enabled'
wp option delete 'nbp_needs_flush'
wp option delete 'wwhry_nbp_enabled'
wp option delete 'wwhry_nbp_needs_flush'

