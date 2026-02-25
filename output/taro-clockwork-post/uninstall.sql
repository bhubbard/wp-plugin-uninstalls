-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tscp_cron_executed', 'tscp_post_types');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_tscp_should_expire', '_tscp_expires');
DELETE FROM wp_usermeta WHERE meta_key IN ('_tscp_should_expire', '_tscp_expires');
DELETE FROM wp_termmeta WHERE meta_key IN ('_tscp_should_expire', '_tscp_expires');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_tscp_should_expire', '_tscp_expires');

