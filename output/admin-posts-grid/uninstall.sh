#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cheritto-admin-grid-columns-count-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cheritto-admin-grid-container-bg-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cheritto-admin-grid-item-bg-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cheritto-admin-grid-theme-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cheritto-admin-grid-per-page-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cheritto-admin-grid-show-image-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cheritto-admin-grid-show-title-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cheritto-admin-grid-show-author-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cheritto-admin-grid-show-categories-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cheritto-admin-grid-show-tags-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cheritto-admin-grid-show-actions-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cheritto-admin-grid-show-date-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cheritto-admin-grid-show-cb-%'"

