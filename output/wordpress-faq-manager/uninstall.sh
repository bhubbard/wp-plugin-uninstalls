#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'faq_options'

# Delete Transients
wp transient delete 'wpfaq_admin_fetch_faqs'
wp transient delete 'wpfaq_widget_fetch_random'
wp transient delete 'wpfaq_widget_fetch_recent'
wp transient delete 'wpfaq_total_faq_count'

