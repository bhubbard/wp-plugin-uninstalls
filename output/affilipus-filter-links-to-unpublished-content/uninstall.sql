-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('affilipus_linkfilter_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_imbaf-linkfilter_filter_links', '_imbaf-linkfilter');
DELETE FROM wp_usermeta WHERE meta_key IN ('_imbaf-linkfilter_filter_links', '_imbaf-linkfilter');
DELETE FROM wp_termmeta WHERE meta_key IN ('_imbaf-linkfilter_filter_links', '_imbaf-linkfilter');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_imbaf-linkfilter_filter_links', '_imbaf-linkfilter');

