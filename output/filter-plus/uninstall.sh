#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'filter_plus_settings'
wp option delete 'woocommerce_currency_pos'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'style'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_field_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_field_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_field_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_field_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'featured_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'featured_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'featured_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'featured_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
