#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bricksable_activation_date'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_activation_date'"
wp option delete 'bricksable_json_uploads'
wp option delete 'bricksable_all_elements'
wp option delete 'bricksable_bricks_builder_filter_save_messages'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'bricksable_%'"
wp option delete 'bricksable_bricks_builder_elements'
wp option delete 'bricksable_image-hotspots'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp option delete 'bricksable_uninstall_on_delete'

