#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cals_settings'
wp option delete 'cals_author_base_buffer'
wp option delete 'rewrite_rules'
wp option delete 'cals_author_base'
wp option delete 'cals_version'

