-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('options-view', 'opv_per_page', 'opv_current_logs', 'opv_filter_user', 'optionsview_search_text');

