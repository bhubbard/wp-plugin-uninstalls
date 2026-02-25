#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nice_loader_font_size'
wp option delete 'nice_loader_title'
wp option delete 'nice_loader_subtitle'
wp option delete 'nice_loader_logo_url'
wp option delete 'nice_loader_theme'
wp option delete 'nice_loader_home_only'
wp option delete 'nice_loader_main_color'

