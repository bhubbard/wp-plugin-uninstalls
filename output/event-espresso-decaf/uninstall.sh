#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'EED_Messages__payment'
wp option delete 'ee_disabled_wp_cron_check'
wp option delete 'espresso_db_update'
wp option delete 'ee_network_config'
wp option delete 'ee_plugin_activation_errors'
wp option delete 'ee_incompatible_addons'
wp option delete 'ee_ueip_optin'
wp option delete 'ee_ueip_has_notified'
wp option delete 'events_organization_settings'
wp option delete 'event_espresso_active_gateways'
wp option delete 'ee_verified_db_collations'
wp option delete 'ee_verified_db_collations_again'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ee_id_mapping_from%'"
wp option delete 'active_sitewide_plugins'
wp option delete 'ee_locked_transactions'
wp option delete 'cron'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'puvererr_%'"
wp option delete 'ee_active_messengers'
wp option delete 'edd_sample_license_key'
wp option delete 'edd_sample_license_status'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pue_force_upgrade_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'external_updates-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pue_special_notices_%'"
wp option delete 'ee_espresso_activation'
wp option delete 'event-espresso-core_allow_tracking'
wp option delete 'event-espresso-core_tracking_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'EE_DEBUG_SPCO_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'wp_graphql_version'
wp option delete 'recently_activated'
wp option delete 'menu_items'
wp option delete 'rewrite_rules'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'wpgraphql_incompatible_plugins'

# Clear Cron Jobs
wp cron event delete 'AHEE__EE_Cron_Tasks__update_transaction_with_payment_2'
wp cron event delete 'AHEE__EE_Cron_Tasks__expired_transaction_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_trash_meta_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_trash_meta_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_trash_meta_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_trash_meta_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_trash_meta_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_trash_meta_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_trash_meta_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_trash_meta_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_trash_meta_comments_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_trash_meta_comments_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_trash_meta_comments_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_trash_meta_comments_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'alt_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'alt_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'alt_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'alt_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recurrence_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recurrence_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recurrence_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recurrence_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'contact'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'contact'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'contact'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'contact'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpgraphql_dismissed_admin_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpgraphql_dismissed_admin_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpgraphql_dismissed_admin_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpgraphql_dismissed_admin_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_desired_post_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_desired_post_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_desired_post_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_desired_post_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'enclosure'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'enclosure'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'enclosure'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'enclosure'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'show_admin_bar_front'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'show_admin_bar_front'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'show_admin_bar_front'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'show_admin_bar_front'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_type'"
