#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'iq_posting_notice'
wp option delete 'postingiq_settings'

# Delete Transients
wp transient delete 'iq_posting_news'

