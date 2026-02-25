#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ssc_real_seo_baseline_last_results'

# Delete Transients
wp transient delete 'ssc_real_seo_baseline_error'
wp transient delete 'ssc_real_seo_baseline_results'

