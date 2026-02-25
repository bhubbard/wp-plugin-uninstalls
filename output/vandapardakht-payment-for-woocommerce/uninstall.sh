#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vandapardakht_do_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vandapardakht_refid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vandapardakht_refid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vandapardakht_refid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vandapardakht_refid'"
