#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'grassblade_tincan_endpoint'
wp option delete 'grassblade_free_addons'
wp option delete 'grassblade_addons'
wp option delete 'autocomplete_learndash'

