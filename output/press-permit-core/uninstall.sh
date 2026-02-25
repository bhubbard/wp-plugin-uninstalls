#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'presspermitpro_version'
wp option delete 'presspermit_version'
wp option delete 'pp_c_version'
wp option delete 'presspermit_activation'
wp option delete 'presspermit_refresh_role_usage'
wp option delete 'classic-editor-allow-users'
wp option delete 'classic-editor-replace'
wp option delete 'active_sitewide_plugins'
wp option delete 'presspermit_define_create_posts_cap'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'presspermit_%'"
wp option delete 'presspermit_deactivated_modules'
wp option delete 'ppc_exposed_attachment_eitems'
wp option delete 'ppc_exposed_eitem_orphans'
wp option delete 'ppc_migration_buffer_active_plugins'
wp option delete 'site_url'
wp option delete 'pp_version'
wp option delete 'presspermit_group_index_drop_done'
wp option delete 'presspermit_need_group_index_drop'
wp option delete 'presspermit_pattern_roles_include_generic_rolecaps'
wp option delete 'presspermit_enabled_taxonomies'
wp option delete 'presspermit_post_blockage_priority'
wp option delete 'presspermit_legacy_exception_handling'
wp option delete 'ppperm_added_role_caps_10beta'
wp option delete 'presspermit_wp_role_sync'
wp option delete 'presspermit_enabled_post_types'
wp option delete 'presspermit_role_usage'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_deactivate'"
wp option delete 'presspermit_created_event_category'
wp option delete 'event-categories_children'
wp option delete 'ppperm_version_history'
wp option delete '_site_transient_update_plugins'
wp option delete 'presspermit_dismissals'
wp option delete 'presspermit_netwide_groups'
wp option delete 'pp_support_key'
wp option delete 'cme_detailed_taxonomies'
wp option delete 'rvy_apply_post_exceptions'
wp option delete 'presspermit_list_others_uneditable_posts'
wp option delete 'ppce_added_role_caps_21beta'
wp option delete 'ppce_version'
wp option delete 'presspermit_feed_teaser'
wp option delete 'presspermit_teaser_redirect_anon_slug'
wp option delete 'presspermit_teaser_redirect_anon_page'
wp option delete 'presspermit_teaser_redirect_slug'
wp option delete 'presspermit_teaser_redirect_page'
wp option delete 'presspermit_tease_post_types'
wp option delete 'presspermit_tease_public_posts_only'
wp option delete 'presspermit_teaser_hide_custom_private_only'
wp option delete 'teaser_hide_links_type'
wp option delete 'teaser_hide_menu_links_type'
wp option delete 'presspermit_delete_settings_on_uninstall'
wp option delete 'ppcc_version'
wp option delete 'ppi_version'
wp option delete 'ppm_version'
wp option delete 'ppp_version'
wp option delete 'pps_version'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'classic-editor-remember'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'classic-editor-remember'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'classic-editor-remember'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'classic-editor-remember'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_classic-editor-settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_classic-editor-settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_classic-editor-settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_classic-editor-settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_trash_meta_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_trash_meta_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_trash_meta_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_trash_meta_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pp_last_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pp_last_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pp_last_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pp_last_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pp_is_autodraft'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pp_is_autodraft'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pp_is_autodraft'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pp_is_autodraft'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_object'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_object'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_object'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_object'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_target'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_target'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_target'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_target'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_classes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_classes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_classes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_classes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_xfn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_xfn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_xfn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_xfn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pp_auto_inserted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pp_auto_inserted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pp_auto_inserted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pp_auto_inserted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%user_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%user_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%user_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%user_level'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
