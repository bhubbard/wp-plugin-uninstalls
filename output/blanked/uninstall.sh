#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'blanked_disable_wp_head'
wp option delete 'blanked_disable_wp_body_open'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'blanked_enable_post_type__%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'blanked_enable_special_page__%'"
wp option delete 'blanked_remove_body_class'
wp option delete 'blanked_add_body_class'
wp option delete 'blanked_remove_post_class'
wp option delete 'blanked_add_post_class'

