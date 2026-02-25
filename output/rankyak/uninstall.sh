#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rankyak_embed_key'
wp option delete 'rankyak_activation_redirect'

# Delete Transients
wp transient delete 'rankyak_notices'

