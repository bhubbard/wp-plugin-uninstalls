#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'monbillet_embed_field_twig_sandbox'
wp option delete 'monbillet_embed_field_api_token'
wp option delete 'monbillet_embed_field_api_cache_duration'

