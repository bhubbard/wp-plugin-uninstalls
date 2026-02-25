#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sitechat_show_activation_notice'
wp option delete 'sitechat_link_code'
wp option delete 'sitechat_enable_ecommerce'

