#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ddfw_delivery_options_group'
wp option delete 'ddfw_enable_delivery'
wp option delete 'ddfw_required_delivery'
wp option delete 'ddfw_disable_virtual'
wp option delete 'ddfw_delivery_error_msg'
wp option delete 'ddfw_delivery_date_title'
wp option delete 'ddfw_delivery_date_email_title'
wp option delete 'ddfw_delivery_date_option_title'
wp option delete 'ddfw_disable_x_days'
wp option delete 'ddfw_specific_day'
wp option delete 'ddfw_disable_monday'
wp option delete 'ddfw_disable_tuesday'
wp option delete 'ddfw_disable_wednesday'
wp option delete 'ddfw_disable_thursday'
wp option delete 'ddfw_disable_friday'
wp option delete 'ddfw_disable_saturday'
wp option delete 'ddfw_disable_sunday'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ddfw_delivery_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ddfw_delivery_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ddfw_delivery_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ddfw_delivery_date'"
