#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mte_enlarge_modal_thumbs'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp option delete 'mte_thumbnail_ud_size_w'
wp option delete 'mte_thumbnail_ud_size_h'

