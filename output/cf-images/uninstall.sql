-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cf-image-ai-api-key', 'cf-images-api-token', 'cf-images-account-id', 'cf-images-auth-error', 'cf-images-version', 'cf-images-install-notice', 'cf-images-settings', 'cf-images-custom-domain', 'cf-images-hide-sidebar', 'cf-images-cdn-enabled', 'cf-images-browser-ttl', 'cf-images-custom-path', 'cf-images-setup-done', 'cf-images-config-written', 'cf-images-hash', 'cf-images-integrations', 'cf-images-stats', 'cf-images-network-wide', 'cf-images-auto-offload', 'cf-images-auto-resize', 'cf-images-custom-id', 'cf-images-disable-async', 'cf-images-disable-generation', 'cf-images-full-offload', 'cf-images-image-ai', 'cf-images-page-parser', 'cf-images-image-compress', 'cf-images-admin-redirect', 'cf-images-custom-path');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cloudflare_image_id', '_cloudflare_image_offloaded', '_cloudflare_image_skip', '_wp_attached_file', '_wp_attachment_image_alt', '_cf_images_stats', '_cf_images_compressed', '_cf_images_skip_compress');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cloudflare_image_id', '_cloudflare_image_offloaded', '_cloudflare_image_skip', '_wp_attached_file', '_wp_attachment_image_alt', '_cf_images_stats', '_cf_images_compressed', '_cf_images_skip_compress');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cloudflare_image_id', '_cloudflare_image_offloaded', '_cloudflare_image_skip', '_wp_attached_file', '_wp_attachment_image_alt', '_cf_images_stats', '_cf_images_compressed', '_cf_images_skip_compress');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cloudflare_image_id', '_cloudflare_image_offloaded', '_cloudflare_image_skip', '_wp_attached_file', '_wp_attachment_image_alt', '_cf_images_stats', '_cf_images_compressed', '_cf_images_skip_compress');

