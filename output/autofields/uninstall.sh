#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'autofields_insert_excerpt'
wp option delete 'autofields_insert_image_custom_field'
wp option delete 'autofields_check_excerpt'
wp option delete 'autofields_check_image_custom_field'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'autofields_%'"

