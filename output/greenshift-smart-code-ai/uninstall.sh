#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'greenshift_smartcode_openaiapikey'
wp option delete 'greenshift_smartcode_claudeapikey'
wp option delete 'greenshift_smartcode_deepseekapikey'
wp option delete 'greenshift_smartcode_geminiapikey'
wp option delete 'greenshift_smartcode_openaiapimodel'
wp option delete 'gspb_global_settings'

