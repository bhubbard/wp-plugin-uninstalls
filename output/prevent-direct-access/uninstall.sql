-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('FREE_PDA_SETTINGS', 'whitelist_roles', 'remote_log', 'pda_license_key', 'jal_db_version', 'pda_jal_db_version_free', 'pda_is_licensed', 'pda_options', 'FREE_PDA_SETTINGS_IP', 'FREE_PDA_SETTINGS_DOWNLOAD', 'pda_free_is_rewrite_rules', 'updated_htaccess_success', 'pda_free_migrated', 'wpfolio_pda_anylc_redirect', 'wpfolio_pda_anylc_site_uid', 'pda_sidebar_content');
DELETE FROM wp_options WHERE option_name LIKE 'wpfolio_pda_anylc_optin_notice_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpfolio_pda_state_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_backup_sizes', '_wp_attached_file', '_wp_attachment_metadata', '_pda_protection', 'pda_subscribed', 'pda_free_subscribe');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_backup_sizes', '_wp_attached_file', '_wp_attachment_metadata', '_pda_protection', 'pda_subscribed', 'pda_free_subscribe');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_backup_sizes', '_wp_attached_file', '_wp_attachment_metadata', '_pda_protection', 'pda_subscribed', 'pda_free_subscribe');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_backup_sizes', '_wp_attached_file', '_wp_attachment_metadata', '_pda_protection', 'pda_subscribed', 'pda_free_subscribe');

