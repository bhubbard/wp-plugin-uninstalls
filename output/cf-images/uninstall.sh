#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cf-image-ai-api-key'
wp option delete 'cf-images-api-token'
wp option delete 'cf-images-account-id'
wp option delete 'cf-images-auth-error'
wp option delete 'cf-images-version'
wp option delete 'cf-images-install-notice'
wp option delete 'cf-images-settings'
wp option delete 'cf-images-custom-domain'
wp option delete 'cf-images-hide-sidebar'
wp option delete 'cf-images-cdn-enabled'
wp option delete 'cf-images-browser-ttl'
wp option delete 'cf-images-custom-path'
wp option delete 'cf-images-setup-done'
wp option delete 'cf-images-config-written'
wp option delete 'cf-images-hash'
wp option delete 'cf-images-integrations'
wp option delete 'cf-images-stats'
wp option delete 'cf-images-network-wide'
wp option delete 'cf-images-auto-offload'
wp option delete 'cf-images-auto-resize'
wp option delete 'cf-images-custom-id'
wp option delete 'cf-images-disable-async'
wp option delete 'cf-images-disable-generation'
wp option delete 'cf-images-full-offload'
wp option delete 'cf-images-image-ai'
wp option delete 'cf-images-page-parser'
wp option delete 'cf-images-image-compress'

# Delete Transients
wp transient delete 'cf-images-admin-redirect'
wp transient delete 'cf-images-custom-path'

# Clear Cron Jobs
wp cron event delete 'cf_images_cdn_status'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cloudflare_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cloudflare_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cloudflare_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cloudflare_image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cloudflare_image_offloaded'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cloudflare_image_offloaded'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cloudflare_image_offloaded'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cloudflare_image_offloaded'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cloudflare_image_skip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cloudflare_image_skip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cloudflare_image_skip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cloudflare_image_skip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cf_images_stats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cf_images_stats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cf_images_stats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cf_images_stats'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cf_images_compressed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cf_images_compressed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cf_images_compressed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cf_images_compressed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cf_images_skip_compress'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cf_images_skip_compress'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cf_images_skip_compress'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cf_images_skip_compress'"
