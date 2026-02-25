#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'meta_generator_and_version_info_remover_options'
wp option delete 'active_sitewide_plugins'

