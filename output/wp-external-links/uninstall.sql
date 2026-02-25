-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpel-version', 'wpel-pointers', 'wpel-first-install', 'wpel-external-link-settings', 'wp_external_links-main', 'wp_external_links-seo', 'wp_external_links-style', 'wp_external_links-extra', 'wp_external_links-screen', 'wp_external_links-meta', 'wpel-internal-link-settings', 'wpel-excluded-link-settings', 'wpel-exceptions-settings', 'wpel-admin-settings', 'wpel-network-settings', 'wpel-network-admin-settings', 'wpel-show-notice', 'wpel-notice-dismissed-rate');

