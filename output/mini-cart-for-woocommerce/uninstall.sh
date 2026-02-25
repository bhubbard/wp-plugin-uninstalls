#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'whmc_sidepanel'
wp option delete 'whmc_menu'
wp option delete 'whmcmiscellaneous'
wp option delete 'whmc_notification'
wp option delete 'whmc_option'
wp option delete 'woocommerce_shop_page_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
