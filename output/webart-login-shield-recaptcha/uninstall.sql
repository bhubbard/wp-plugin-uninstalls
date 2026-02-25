-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lgre_elementor_login_align', 'lgre_elementor_forms_align', 'lgre_ip_blocklist_enabled', 'lgre_ip_blocklist', 'lgre_adv_schema_migrated', 'lgre_autoload_fix_done', 'lgre_delete_data_on_uninstall', 'lgre_recaptcha_enable_blocked_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lgre_admin_conflict_notice_seen_v2', 'lgre_admin_setup_notice_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('lgre_admin_conflict_notice_seen_v2', 'lgre_admin_setup_notice_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('lgre_admin_conflict_notice_seen_v2', 'lgre_admin_setup_notice_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lgre_admin_conflict_notice_seen_v2', 'lgre_admin_setup_notice_dismissed');

