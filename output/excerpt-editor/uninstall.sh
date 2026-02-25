#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pgee_append_options'
wp option delete 'pgee_auto_options'
wp option delete 'pgee_replace_options'
wp option delete 'pgee_options'
wp option delete 'links_updated_date_format'

