#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'noindex_parameters_rules'
wp option delete 'noindex_parameters_last_updated'
wp option delete 'noindex_parameters_version'

