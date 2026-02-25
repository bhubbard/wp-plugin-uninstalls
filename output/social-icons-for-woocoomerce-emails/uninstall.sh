#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'siwce_text_before_icons'
wp option delete 'siwce_img_width'
wp option delete 'woocommerce_email_base_color'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'siwce_url_%'"

