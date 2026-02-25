#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'emailtools'

# Delete Transients
wp transient delete 'emt_terms_and_conditions'
wp transient delete 'required_wc'
wp transient delete 'emt_required_wc'

