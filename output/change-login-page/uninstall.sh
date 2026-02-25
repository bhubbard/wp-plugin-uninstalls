#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'clp_background_url'
wp option delete 'clp_logo_url'
wp option delete 'clp_logo_height'
wp option delete 'clp_logo_width'
wp option delete 'clp_primary_color'
wp option delete 'clp_primary_text_color'
wp option delete 'clp_text_color'

