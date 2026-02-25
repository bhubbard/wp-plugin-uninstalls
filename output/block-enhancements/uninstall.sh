#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'be_allowed_blocks'
wp option delete 'be_breakpoints'
wp option delete 'block_enhancements_activation_redirect'
wp option delete 'cbb_breakpoints'

# Delete Transients
wp transient delete 'be_docs'

