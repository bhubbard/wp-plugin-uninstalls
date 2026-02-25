-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('exile-bucketlist-catstate', 'exile-bucketlist-credits', 'exile-bucketlist-infobox');

