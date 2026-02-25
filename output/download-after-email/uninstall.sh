#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dae_field_labels'
wp option delete 'dae_fields'
wp option delete 'dae_messages'
wp option delete 'dae_subscribers_per_page'
wp option delete 'dae_options'
wp option delete 'dae_db_version'
wp option delete 'dae_htaccess_updated'

# Clear Cron Jobs
wp cron event delete 'dae_cleanup_expired_transients'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dae_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dae_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dae_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dae_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dae_shortcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dae_shortcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dae_shortcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dae_shortcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dae_duplicate_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dae_duplicate_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dae_duplicate_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dae_duplicate_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
