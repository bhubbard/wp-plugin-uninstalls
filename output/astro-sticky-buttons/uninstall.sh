#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%position'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%icon-margin-top'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%icon-margin-right'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%icon-margin-bottom'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%icon-margin-left'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%icon-padding'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%icon-width'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%icon-font-size'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%icon-border-width'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%icon-border-style'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%icon-border-radius'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%icon-box-shadow'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%custom-css'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'astro_sb_enable_%'"
wp option delete 'astro_sb_enable_post'
wp option delete 'astro_sb_enable_page'
wp option delete 'astro_sb_enable_attachment'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%email'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%telephone'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%whatsapp'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%skype'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%facebook_messenger'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%facebook'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%instagram'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%pinterest'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%youtube'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%tiktok'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%twitter'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%vimeo'"

