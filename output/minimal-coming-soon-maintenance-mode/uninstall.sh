#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'signals_csmm_meta'
wp option delete 'signals_csmm_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wf_licensing_%'"
wp option delete 'csmm_pointers'

# Delete Transients
wp transient delete 'csmm_error_msg'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_signals_csmm_err_%' OR option_name LIKE '_site_transient_signals_csmm_err_%'"
wp transient delete 'update_plugins'
wp transient delete 'csmm_rate_hide'
wp transient delete 'csmm_welcome_hide'
wp transient delete 'csmm_olduser_hide'
wp transient delete 'csmm_subscribe_hide'

