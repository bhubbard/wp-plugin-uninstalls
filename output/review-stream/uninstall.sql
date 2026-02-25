-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('reviewstream_version', 'reviewstream_active', 'rs_api_token', 'rs_path', 'rs_default_count', 'rs_type', 'rs_schema', 'rs_review_display', 'rs_schema_direct_only', 'rs_show_aggregate_rating', 'rs_last_initial', 'rs_show_reviews', 'rs_include_empty', 'rs_stream_only', 'rs_show_powered_by', 'rs_pager');

