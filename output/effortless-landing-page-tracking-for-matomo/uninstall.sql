-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mdw_matomo_migrated_v143', 'ellpt_matomo_url', 'ellpt_matomo_site_id', 'mdw_matomo_url', 'mdw_matomo_site_id', 'mdw_matomo_source', 'mdw_matomo_token');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mdw_last_period');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mdw_last_period');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mdw_last_period');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mdw_last_period');

