#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lp_num_limit'
wp option delete 'lp_per_author'
wp option delete 'lp_force_delete'

