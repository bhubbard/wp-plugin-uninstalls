#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'faqm_options'
wp option delete 'faqm_log'

# Delete Transients
wp transient delete 'faqm_member_status'

