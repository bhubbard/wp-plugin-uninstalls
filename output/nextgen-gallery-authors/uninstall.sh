#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nggdate_options'
wp option delete 'nggauthors_options'
wp option delete 'ngg_options'
wp option delete 'rewrite_rules'

