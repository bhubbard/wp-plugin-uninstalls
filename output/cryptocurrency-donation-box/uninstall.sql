-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cdbbc_activated', 'cdbbc-alreadyRated', 'cdbbc_activation_time', 'cdbbc_spare_me', 'cdbbc_email_verification', 'cddbc_activated', 'cdbbc_settings', 'CDBBC_do_activation_redirect', 'CDBBC_FRESH_INSTALLATION', 'cdbbc_migarte_codestar', 'CDBBC_FREE_VERSION', 'cdbbc_migarte_settings', 'meta_public_key', 'meta_private_key', 'cdbbc-add-wallet', 'cdbbc-coin-settings', 'cdbbc_init_activation', 'donation_auth_token');
DELETE FROM wp_options WHERE option_name LIKE '%_db_version';
DELETE FROM wp_options WHERE option_name LIKE '%_init_activation';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template');

