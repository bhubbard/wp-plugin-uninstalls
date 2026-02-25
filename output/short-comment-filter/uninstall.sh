#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shortfilter_filter_type'
wp option delete 'shortfilter_min_count'
wp option delete 'shortfilter_default_action'
wp option delete 'shortfilter_filter_users'
wp option delete 'shortfilter_js_check'
wp option delete 'shortfilter_comment_count'
wp option delete 'shortfilter_message'

