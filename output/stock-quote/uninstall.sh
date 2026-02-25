#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'stockquote_db_ver'
wp option delete 'stockquote_av_last'
wp option delete 'stockquote_av_last_timestamp'
wp option delete 'stockquote_av_progress'
wp option delete 'stockquote_av_tier_end_timestamp'
wp option delete 'stockquote_version'
wp option delete 'stock_quote_defaults'
wp option delete 'stockquote_defaults'

