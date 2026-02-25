-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('goodreviews-getmethod', 'goodreviews-api-key', 'goodreviews-agree', 'goodreviews-responsive-style', 'goodreviews-alt-style', 'goodrev-perform', 'goodrev-clearcache', 'goodrev-defer');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('goodreviews_220', 'goodreviews_ignore_FileGetEnabled', 'goodreviews_ignore_CurlEnabled', 'goodreviews_ignore_CurlDisabled');
DELETE FROM wp_usermeta WHERE meta_key IN ('goodreviews_220', 'goodreviews_ignore_FileGetEnabled', 'goodreviews_ignore_CurlEnabled', 'goodreviews_ignore_CurlDisabled');
DELETE FROM wp_termmeta WHERE meta_key IN ('goodreviews_220', 'goodreviews_ignore_FileGetEnabled', 'goodreviews_ignore_CurlEnabled', 'goodreviews_ignore_CurlDisabled');
DELETE FROM wp_commentmeta WHERE meta_key IN ('goodreviews_220', 'goodreviews_ignore_FileGetEnabled', 'goodreviews_ignore_CurlEnabled', 'goodreviews_ignore_CurlDisabled');

