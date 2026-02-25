-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shortfilter_filter_type', 'shortfilter_min_count', 'shortfilter_default_action', 'shortfilter_filter_users', 'shortfilter_js_check', 'shortfilter_comment_count', 'shortfilter_message');

