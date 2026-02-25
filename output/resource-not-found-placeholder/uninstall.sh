#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eos_rnfp_activation_info'
wp option delete 'eos_rnfp_version'

# Delete Transients
wp transient delete 'rnfp-notice-fail'
wp transient delete 'eos-rnfp-notice-fail'

