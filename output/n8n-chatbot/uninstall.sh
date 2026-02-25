#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'chatics_url'
wp option delete 'chatics_enabled'
wp option delete 'chatics_position'
wp option delete 'chatics_title'
wp option delete 'chatics_color'
wp option delete 'chatics_icon_type'
wp option delete 'chatics_icon_text'
wp option delete 'chatics_icon_url'
wp option delete 'chatics_zoom'
wp option delete 'chatics_allowed_days'
wp option delete 'chatics_start_time'
wp option delete 'chatics_end_time'
wp option delete 'chatics_header_enabled'

