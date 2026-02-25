-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpsi_select_dashboard_capability', 'wpsi_select_term_deletion_period', 'wpsi-current-version', 'wpsi_version_two_installation_time', 'wpsi_checked_ajax_plugins', 'wpsi_track_ajax_searches', 'wpsi_activation_time', 'wpsi_exclude_admin', 'wpsi_min_term_length', 'wpsi_max_term_length', 'wpsi_custom_search_parameter', 'wpsi_filter_textarea', 'wpsi_cleardatabase', 'wpsi_export_row_count', 'wpsi_export_progress', 'wpsi_file_name', 'wpsi_database_created', 'wpsi_review_notice_shown', 'wpsi_spam_filter_stats', 'wpsi_toolset_configured', 'wpsi_tour_cancelled', 'wpsi_database_postids_upgrade_completed', 'search_insights_db_version', 'wpsi_export_in_progress', 'wpsi_popular_searches', 'wpsi_top_searches', 'wpsi_top_searches_week', 'wpsi_popular_searches_week', 'wpsi_plus_ones', 'wpsi_range_start', 'wpsi_range_end', 'wpsi_range_type', 'wpsi_total_searchcount');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpsi_popular_filter_preference');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpsi_popular_filter_preference');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpsi_popular_filter_preference');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpsi_popular_filter_preference');

