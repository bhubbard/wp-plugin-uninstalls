#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'old_permalink_structure'
wp option delete 'hfa_selected_post_type'

