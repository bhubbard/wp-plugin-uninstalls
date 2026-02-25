#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cpnl_o'

# Delete Transients
wp transient delete 'cpnl_t_k'

