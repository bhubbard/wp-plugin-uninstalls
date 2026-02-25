-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('silas_flickr_token', 'silas_flickr_hidealbums', 'silas_flickr_hidegroups', 'silas_flickr_grouporder', 'silas_flickr_albumorder', 'silas_flickr_baseurl', 'silas_flickr_linkoptions', 'silas_flickr_hideprivate', 'silas_flickr_apikey', 'silas_flickr_sharedsecret', 'silas_flickr_baseurl_pre', 'silas_flickr_showbadge', 'silas_flickr_user', 'update_plugins');

