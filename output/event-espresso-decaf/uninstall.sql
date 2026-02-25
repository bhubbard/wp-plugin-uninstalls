-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('EED_Messages__payment', 'ee_disabled_wp_cron_check', 'espresso_db_update', 'ee_network_config', 'ee_plugin_activation_errors', 'ee_incompatible_addons', 'ee_ueip_optin', 'ee_ueip_has_notified', 'events_organization_settings', 'event_espresso_active_gateways', 'ee_verified_db_collations', 'ee_verified_db_collations_again', 'active_sitewide_plugins', 'ee_locked_transactions', 'cron', 'ee_active_messengers', 'edd_sample_license_key', 'edd_sample_license_status', 'ee_espresso_activation', 'event-espresso-core_allow_tracking', 'event-espresso-core_tracking_notice', 'wp_graphql_version', 'recently_activated', 'menu_items', 'rewrite_rules', 'update_plugins', 'wpgraphql_incompatible_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'ee_id_mapping_from%';
DELETE FROM wp_options WHERE option_name LIKE 'puvererr_%';
DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%';
DELETE FROM wp_options WHERE option_name LIKE 'pue_force_upgrade_%';
DELETE FROM wp_options WHERE option_name LIKE 'external_updates-%';
DELETE FROM wp_options WHERE option_name LIKE 'pue_special_notices_%';
DELETE FROM wp_options WHERE option_name LIKE 'EE_DEBUG_SPCO_%';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', '_wp_trash_meta_status', '_wp_trash_meta_time', '_wp_trash_meta_comments_status', 'alt_email', 'recurrence_id', 'contact', '_thumbnail_id', '_wp_attachment_image_alt', 'wpgraphql_dismissed_admin_notices', '_edit_last', '_wp_desired_post_slug', '_edit_lock', 'enclosure', 'show_admin_bar_front', '_wp_attached_file', '_menu_item_object_id', '_menu_item_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', '_wp_trash_meta_status', '_wp_trash_meta_time', '_wp_trash_meta_comments_status', 'alt_email', 'recurrence_id', 'contact', '_thumbnail_id', '_wp_attachment_image_alt', 'wpgraphql_dismissed_admin_notices', '_edit_last', '_wp_desired_post_slug', '_edit_lock', 'enclosure', 'show_admin_bar_front', '_wp_attached_file', '_menu_item_object_id', '_menu_item_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', '_wp_trash_meta_status', '_wp_trash_meta_time', '_wp_trash_meta_comments_status', 'alt_email', 'recurrence_id', 'contact', '_thumbnail_id', '_wp_attachment_image_alt', 'wpgraphql_dismissed_admin_notices', '_edit_last', '_wp_desired_post_slug', '_edit_lock', 'enclosure', 'show_admin_bar_front', '_wp_attached_file', '_menu_item_object_id', '_menu_item_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', '_wp_trash_meta_status', '_wp_trash_meta_time', '_wp_trash_meta_comments_status', 'alt_email', 'recurrence_id', 'contact', '_thumbnail_id', '_wp_attachment_image_alt', 'wpgraphql_dismissed_admin_notices', '_edit_last', '_wp_desired_post_slug', '_edit_lock', 'enclosure', 'show_admin_bar_front', '_wp_attached_file', '_menu_item_object_id', '_menu_item_type');

