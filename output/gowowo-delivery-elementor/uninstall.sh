#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gonowo_options'
wp option delete 'gonowo_color_main'
wp option delete 'gonowo_color_main_hover'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gonowo_customer_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gonowo_customer_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gonowo_customer_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gonowo_customer_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gonowo_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gonowo_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gonowo_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gonowo_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gonowo_attribute'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gonowo_attribute'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gonowo_attribute'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gonowo_attribute'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gonowo_extra'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gonowo_extra'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gonowo_extra'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gonowo_extra'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gonowo_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gonowo_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gonowo_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gonowo_gallery'"
