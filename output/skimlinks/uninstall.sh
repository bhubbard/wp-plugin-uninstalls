#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sl_db_version'
wp option delete 'sl_append_disclosure_badge'
wp option delete 'sl_add_disclosure_badge'
wp option delete 'sl_publisher_id'
wp option delete 'sl_enable_subdomain'
wp option delete 'sl_subdomain'
wp option delete 'sl_enable_rss_filtering'
wp option delete 'sl_footer_js_works_for'

# Delete Transients
wp transient delete 'sl_verify_footer_js_token'

