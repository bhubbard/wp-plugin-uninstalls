#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pitchhub_embed_general'
wp option delete 'pitchhub_embed_shortcode'
wp option delete 'pitchhub_embed_shortcode_admin'
wp option delete 'pitchhub_embed_shortcode_site'
wp option delete 'pitchhub_embed_version'

