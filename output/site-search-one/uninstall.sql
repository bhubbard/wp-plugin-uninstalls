-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('site-search-one-premium-install-location', 'site-search-one-install-location', 'ss1-endpoint-url', 'ss1-apiKey', 'ss1-disableLongRunningThreads', 'ss1-maximumBatchSize', 'ss1-queue-paused', 'ss1-searchform-override', 'ss1-globals-installed', 'ss1-indexes-installed', 'ss1-site-vars-installed', 'ss1-tokens-has-sites', 'ss1-search-pages-installed', 'ss1-active');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('type', '_ss1_noindex');
DELETE FROM wp_usermeta WHERE meta_key IN ('type', '_ss1_noindex');
DELETE FROM wp_termmeta WHERE meta_key IN ('type', '_ss1_noindex');
DELETE FROM wp_commentmeta WHERE meta_key IN ('type', '_ss1_noindex');

