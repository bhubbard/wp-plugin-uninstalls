#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_auto_embed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_img_og_meta'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_img_min_width'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_img_min_height'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_img_disallow_ads'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_shot_service'"

