#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tigsaw_activation_redirect'
wp option delete 'tigsaw_container_id'
wp option delete 'tigsaw_script_enabled'

