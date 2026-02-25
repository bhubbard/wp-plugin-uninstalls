#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'askaiwp_setting'

# Delete Transients
wp transient delete 'askaiwp_gemini_models'

