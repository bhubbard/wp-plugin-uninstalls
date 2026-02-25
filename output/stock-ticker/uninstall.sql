-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stockticker_db_ver', 'stockticker_av_last', 'stockticker_av_last_timestamp', 'stockticker_av_progress', 'av_api_tier_free_quota', 'stockticker_av_tier_end_timestamp', 'stockticker_version', 'stock_ticker_defaults', 'stockticker_defaults', 'st_symbols', 'st_show', 'st_quote_zero', 'st_quote_minus', 'st_quote_plus', 'stockticker_av_latest', 'stockticker_av_latest_timestamp');

