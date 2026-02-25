#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'enyoi_store_info_options'
wp option delete 'enyoi_store_info_translation_notice'
wp option delete 'enyoi_store_info_network_options'
wp option delete 'widget_enyoi_store_info_widget'

