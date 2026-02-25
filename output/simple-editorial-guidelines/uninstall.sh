#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wdseg_guidelines_text'
wp option delete 'wdseg_text_color'
wp option delete 'wdseg_background_color'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wdseg_post_type_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wdseg_user_role_%'"

