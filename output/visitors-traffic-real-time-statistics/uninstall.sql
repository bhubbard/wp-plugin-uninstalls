-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ahcfree_first_time_setup', 'ahcfree_custom_timezone', 'ahcfree_upgrade_message', 'ahcfree_new_updates', 'ahcfree_hide_top_bar_icon', 'ahcfree_delete_plugin_data_on_uninstall', 'ahcproExcludeRoles', 'ahcfree_ahcfree_haships', 'ahcfree_save_ips_opn', 'ahcproUserRoles', 'ahcproRobots', 'ahcfree_wp_hits_counter_options', 'ahc_db_indexes_ahc_online_users_added');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ahcfree_total_views', '_ahcfree_unique_visitors');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ahcfree_total_views', '_ahcfree_unique_visitors');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ahcfree_total_views', '_ahcfree_unique_visitors');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ahcfree_total_views', '_ahcfree_unique_visitors');

