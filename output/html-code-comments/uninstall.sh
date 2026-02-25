#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hcc_allowed_tags'
wp option delete 'hcc_encode_html'
wp option delete 'hcc_warning_message'
wp option delete 'hcc_force_links_target'
wp option delete 'hcc_version'

