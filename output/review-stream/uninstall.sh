#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'reviewstream_version'
wp option delete 'reviewstream_active'
wp option delete 'rs_api_token'
wp option delete 'rs_path'
wp option delete 'rs_default_count'
wp option delete 'rs_type'
wp option delete 'rs_schema'
wp option delete 'rs_review_display'
wp option delete 'rs_schema_direct_only'
wp option delete 'rs_show_aggregate_rating'
wp option delete 'rs_last_initial'
wp option delete 'rs_show_reviews'
wp option delete 'rs_include_empty'
wp option delete 'rs_stream_only'
wp option delete 'rs_show_powered_by'
wp option delete 'rs_pager'

