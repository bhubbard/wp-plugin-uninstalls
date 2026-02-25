#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'autoads_premiere_plugin_version'
wp option delete 'autoads_premiere_options'
wp option delete 'autoads_premiere'
wp option delete 'autoads_premiere_field_googleid'
wp option delete 'autoads_premiere_field_exclusions'

