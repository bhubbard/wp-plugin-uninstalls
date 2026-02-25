#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'livestream_embedder_api_key'
wp option delete 'livestream_embedder_default_channel'

