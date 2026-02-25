-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('link-checker-token', 'sitemap-generator-token', 'sitemap-generator-max-fetchers', 'sitemap-generator-ignore-embedded-content', 'sitemap-generator-reference-count-threshold', 'sitemap-generator-query-params-to-remove', 'sitemap-generator-disable-cookies');

