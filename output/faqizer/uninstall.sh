#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dlwfq-archive-accordion'
wp option delete 'dlwfq-archive-title'
wp option delete 'dlwfq-total-posts-on-archive-page'
wp option delete 'dlwfq-archive-options-slug'
wp option delete 'dlwfq-plugin-v'

# Delete Transients
wp transient delete 'dlwfq_faqizer_activated'

