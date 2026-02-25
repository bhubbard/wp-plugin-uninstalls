#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sidebars_widgets'

# Delete Transients
wp transient delete 'cision_block_flush_rewrite_rules'

