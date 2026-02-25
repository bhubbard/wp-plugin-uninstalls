#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_rss_cache'

# Delete Transients
wp transient delete '_wp_rss_retriever_activation_redirect'

