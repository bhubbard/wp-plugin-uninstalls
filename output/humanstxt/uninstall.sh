#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rewrite_rules'
wp option delete 'humanstxt_options'
wp option delete 'humanstxt_content'
wp option delete 'humanstxt_revisions'

# Delete Transients
wp transient delete 'humanstxt_plugin_information'

