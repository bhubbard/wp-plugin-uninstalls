-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smc_global_option', 'smc_weibo_options', 'smc_weibo_appkey', 'smc_vesion_compatible');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_thumbnail_id', 'smcdata', 'smc_weibo_email_bind', 'smcoldversion');
DELETE FROM wp_usermeta WHERE meta_key IN ('_thumbnail_id', 'smcdata', 'smc_weibo_email_bind', 'smcoldversion');
DELETE FROM wp_termmeta WHERE meta_key IN ('_thumbnail_id', 'smcdata', 'smc_weibo_email_bind', 'smcoldversion');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_thumbnail_id', 'smcdata', 'smc_weibo_email_bind', 'smcoldversion');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_sync';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_sync';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_sync';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_sync';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'smcidentity_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'smcidentity_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'smcidentity_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'smcidentity_%';

