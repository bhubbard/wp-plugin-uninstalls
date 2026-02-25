#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cus_rewrite_update_time'
wp option delete 'gnpub_installed_version'
wp option delete 'gnpub_last_activation'
wp option delete 'gnpub_last_deactivation'
wp option delete 'gnpub_new_options'
wp option delete 'gnpub_shortcode_options'
wp option delete 'gnpub_google_index_api_settings'
wp option delete 'gnpub_giapi_requests'
wp option delete 'gnpub_include_featured_image'
wp option delete 'gnpub_is_default_feed'
wp option delete 'gnpub_websub_last_ping'
wp option delete 'gnpub_google_last_fetch'
wp option delete 'gnpub_news_sitmap'
wp option delete 'gnpub_setup_wizard_checklist'
wp option delete 'gnpub_activation_redirect'
wp option delete 'gnpub_pro_upgrade_license'
wp option delete 'gnpub_feed_list'

# Delete Transients
wp transient delete 'gnpub_websub_lock'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gnpub_modified_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gnpub_modified_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gnpub_modified_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gnpub_modified_count'"
