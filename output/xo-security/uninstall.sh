#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xo_security_options'

# Delete Transients
wp transient delete 'xo_security_flush_rewrite_rules'

# Clear Cron Jobs
wp cron event delete 'xo_security_optimize_table'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xo_security_two_factor_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xo_security_two_factor_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xo_security_two_factor_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xo_security_two_factor_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xo_security_two_factor_secret_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xo_security_two_factor_secret_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xo_security_two_factor_secret_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xo_security_two_factor_secret_key'"
