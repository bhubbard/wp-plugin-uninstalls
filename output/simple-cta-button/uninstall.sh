#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simple_cta_settings'
wp option delete 'simple_cta_impressions'
wp option delete 'simple_cta_clicks'
wp option delete 'simple_cta_timestamp'

