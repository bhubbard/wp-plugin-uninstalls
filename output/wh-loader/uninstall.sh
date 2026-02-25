#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wh_loader_brand_name'
wp option delete 'wh_loader_bg_color'
wp option delete 'wh_loader_text_color'
wp option delete 'wh_loader_spinner_active'

