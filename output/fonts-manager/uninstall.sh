#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'winofm_settings'
wp option delete 'winofm_saved_glinks'
wp option delete 'winofm_session_glinks'
wp option delete 'winofm_extra_glinks'
wp option delete 'winofm_hosted_glinks'

