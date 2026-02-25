#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ezscm_debug_mode'
wp option delete 'ezscm_required_text'
wp option delete 'ezscm_uninstall_keep_data'
wp option delete 'ezscm_custom_css'

