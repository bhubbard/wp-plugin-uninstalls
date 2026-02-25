#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'intochat_display_method'
wp option delete 'intochat_default_id'

# Delete Transients
wp transient delete 'intochat_embed_transient_data'

