-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stockquote_db_ver', 'stockquote_av_last', 'stockquote_av_last_timestamp', 'stockquote_av_progress', 'stockquote_av_tier_end_timestamp', 'stockquote_version', 'stock_quote_defaults', 'stockquote_defaults');

