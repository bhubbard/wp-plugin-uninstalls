#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'selektable_store_id'
wp option delete 'selektable_app_url'
wp option delete 'selektable_integrations'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'selektable_db_version'
wp option delete 'selektable_widget_id'
wp option delete 'selektable_button_placement'
wp option delete 'selektable_button_text'
wp option delete 'selektable_button_class'
wp option delete 'selektable_enable_all'
wp option delete 'selektable_enabled_categories'
wp option delete 'selektable_enabled_tags'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_selektable_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_selektable_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_selektable_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_selektable_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_selektable_override_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_selektable_override_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_selektable_override_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_selektable_override_image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
