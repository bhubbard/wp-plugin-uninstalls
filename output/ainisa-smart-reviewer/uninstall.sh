#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rewrite_rules'
wp option delete 'ainisa_smart_reviewer_options'

# Delete Transients
wp transient delete 'ainisa_smart_reviewer_options'

