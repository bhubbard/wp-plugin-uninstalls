#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aranalyzer_isHighlightingEnabled'
wp option delete 'classic-editor-replace'
wp option delete 'aranalyzer_consumerkey'
wp option delete 'aranalyzer_secretkey'
wp option delete 'aranalyzer_state_keys'
wp option delete 'aranalyzer_tracking'
wp option delete 'aranalyzer_view'
wp option delete 'aranalyzer_RSS'
wp option delete 'arActivatedDate'
wp option delete 'aranalyzer_create'
wp option delete 'aranalyzer_recommendation'
wp option delete 'rss_language'
wp option delete 'my_plugin_do_activation_redirect'
wp option delete 'aranalyzer_tracking_date'
wp option delete 'AR_Tracking_Hash'

