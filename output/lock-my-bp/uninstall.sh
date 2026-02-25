#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bplock_general_settings'
wp option delete 'bplock-pages'
wp option delete 'bplock_gen_globals_copied'
wp option delete 'bp-components'
wp option delete 'custom-post-types'
wp option delete 'bplock-default-set'

# Delete Transients
wp transient delete '_bplock_is_new_install'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_bplock_login_attempts_%' OR option_name LIKE '_site_transient_bplock_login_attempts_%'"

