#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aktt_gatagger_utm_source'
wp option delete 'aktt_gatagger_utm_medium'
wp option delete 'aktt_gatagger_utm_term'
wp option delete 'aktt_gatagger_utm_content'
wp option delete 'aktt_gatagger_utm_campaign'

