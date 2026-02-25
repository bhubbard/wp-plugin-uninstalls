#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sls_logo_table_version'
wp option delete 'sls_title_slider'
wp option delete 'sls_settings'
wp option delete 'sls_slides_to_show'
wp option delete 'sls_slides_to_scroll'
wp option delete 'sls_autoplay'
wp option delete 'sls_autoplay_speed'
wp option delete 'sls_arrows'
wp option delete 'sls_dots'
wp option delete 'sls_pause_on_hover'

