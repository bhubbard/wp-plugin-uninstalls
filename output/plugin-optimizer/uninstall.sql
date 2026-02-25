-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('plgnoptmzr_original_menu', 'plgnoptmzr_topbar_menu', 'plgnoptmzr_new_posts', 'po_db_updated-v1.2', 'po_admin_get_menu', 'po_should_alphabetize_menu', 'po_total_time', 'po_admin_menu_list', 'just-activated', 'po-just-activated', 'active_plugins_on_menu_save', 'po_db_updated', 'wc_count_comments');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('premium_filter', 'frontend', 'turned_off', 'completed_overview_tabs', 'sospo_filter_columns', 'filter_type', 'plugins_to_block', 'belongs_to', 'endpoints', 'version', 'dict_id', 'status', 'statusChanged', 'categories', 'group_plugins', 'post_link', 'groups_used', 'belongsTo', 'type');
DELETE FROM wp_usermeta WHERE meta_key IN ('premium_filter', 'frontend', 'turned_off', 'completed_overview_tabs', 'sospo_filter_columns', 'filter_type', 'plugins_to_block', 'belongs_to', 'endpoints', 'version', 'dict_id', 'status', 'statusChanged', 'categories', 'group_plugins', 'post_link', 'groups_used', 'belongsTo', 'type');
DELETE FROM wp_termmeta WHERE meta_key IN ('premium_filter', 'frontend', 'turned_off', 'completed_overview_tabs', 'sospo_filter_columns', 'filter_type', 'plugins_to_block', 'belongs_to', 'endpoints', 'version', 'dict_id', 'status', 'statusChanged', 'categories', 'group_plugins', 'post_link', 'groups_used', 'belongsTo', 'type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('premium_filter', 'frontend', 'turned_off', 'completed_overview_tabs', 'sospo_filter_columns', 'filter_type', 'plugins_to_block', 'belongs_to', 'endpoints', 'version', 'dict_id', 'status', 'statusChanged', 'categories', 'group_plugins', 'post_link', 'groups_used', 'belongsTo', 'type');

