#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'draft_post_generator_defaults'

# Delete Transients
wp transient delete 'draft_post_generator_message'

