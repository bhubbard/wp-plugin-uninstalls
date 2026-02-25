#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zednatq_username'
wp option delete 'zednatq_share_text'
wp option delete 'zednatq_class'
wp option delete 'zednatq_utm_campaign'
wp option delete 'zednatq_utm_medium'
wp option delete 'zednatq_utm_source'
wp option delete 'zednatq-short-url'

