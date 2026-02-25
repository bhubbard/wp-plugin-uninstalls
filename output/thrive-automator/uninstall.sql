-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('thrive_automator_activation_redirect', 'tap_log_settings', 'active_sitewide_plugins', 'tpm_bk_connection');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('thrive_social_urls');
DELETE FROM wp_usermeta WHERE meta_key IN ('thrive_social_urls');
DELETE FROM wp_termmeta WHERE meta_key IN ('thrive_social_urls');
DELETE FROM wp_commentmeta WHERE meta_key IN ('thrive_social_urls');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tap-%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tap-%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tap-%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tap-%';

