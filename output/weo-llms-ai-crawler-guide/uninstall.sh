#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'weo_llms_intro'
wp option delete 'weo_llms_outro'
wp option delete 'weo_llms_post_types'
wp option delete 'weo_llms_add_to_robots'

# Delete Transients
wp transient delete 'weo_llms_content'

