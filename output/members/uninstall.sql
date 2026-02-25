-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('members_admin_access_settings', 'mrh_plugin_settings', 'members_role_hierarchy', 'members_hide_announcements', 'members_notifications', 'members_activated', 'members_review_prompt_delay', 'members_settings', 'members_review_prompt_removed', 'members_active_addons', 'members_dismiss_upgrade_header', 'woocommerce_myaccount_page_id', 'members_addons_migrated', 'members_30days_flag', 'members_review_prompt_delay', 'caseproof_growth_tools_configuration_data_v2');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_members_access_role', '_members_access_error', 'dismissed_wp_pointers', '_role');
DELETE FROM wp_usermeta WHERE meta_key IN ('_members_access_role', '_members_access_error', 'dismissed_wp_pointers', '_role');
DELETE FROM wp_termmeta WHERE meta_key IN ('_members_access_role', '_members_access_error', 'dismissed_wp_pointers', '_role');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_members_access_role', '_members_access_error', 'dismissed_wp_pointers', '_role');

