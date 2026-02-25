-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pta-url-base', 'pta-use-rewrite-slug', 'pta-title', 'pta-template-pattern', 'pta-fallback-template', 'pta-enable-feed-links', 'pta-enabled-post-type-archives', 'pta-enabled-post-type-customisations');

