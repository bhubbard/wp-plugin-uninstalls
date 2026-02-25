#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'stockticker_db_ver'
wp option delete 'stockticker_av_last'
wp option delete 'stockticker_av_last_timestamp'
wp option delete 'stockticker_av_progress'
wp option delete 'av_api_tier_free_quota'
wp option delete 'stockticker_av_tier_end_timestamp'
wp option delete 'stockticker_version'
wp option delete 'stock_ticker_defaults'
wp option delete 'stockticker_defaults'
wp option delete 'st_symbols'
wp option delete 'st_show'
wp option delete 'st_quote_zero'
wp option delete 'st_quote_minus'
wp option delete 'st_quote_plus'
wp option delete 'stockticker_av_latest'
wp option delete 'stockticker_av_latest_timestamp'

