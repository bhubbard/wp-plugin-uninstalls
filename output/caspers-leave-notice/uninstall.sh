#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cpln_content_settings'
wp option delete 'cpln_other_settings'
wp option delete 'cpln_exclusions'
wp option delete 'cpln_styling_settings'

