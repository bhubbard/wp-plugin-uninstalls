#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xkcd_embed'

# Delete Transients
wp transient delete 'xkcd_embed_latest'

