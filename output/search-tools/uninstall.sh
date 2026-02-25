#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'seto_db_version'
wp option delete 'seto_plugin_activation_date'
wp option delete 'seto_free_options'
wp option delete 'seto_disable_reviews'
wp option delete 'seto_options'

