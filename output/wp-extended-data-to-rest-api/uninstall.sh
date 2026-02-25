#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpedtra-meta'
wp option delete 'wpedtra-terms'
wp option delete 'wpedtra-p2p'
wp option delete 'wpedtra-children_ids'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpedtra-pt-%'"

