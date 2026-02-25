-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aptranet_cdn_distribution', 'aptranet_cdn_distribution_name', 'aptranet_cdn_access_key', 'aptranet_cdn_secret', 'aptranet_cdn_enable', 'aptranet_cdn_base_url');

